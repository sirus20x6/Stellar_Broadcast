const http = require('http');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

const PORT = 9124;
const DASHBOARD_DIR = '/thearray/git/quickapps/apps/starbound_exodus/tools/qa-dashboard';
const SCREENSHOTS_DIR = '/thearray/git/quickapps/apps/starbound_exodus/assets/screenshots';
const PUBSPEC_PATH = '/thearray/git/quickapps/apps/starbound_exodus/pubspec.yaml';
const SCREENS_DIR = '/thearray/git/quickapps/apps/starbound_exodus/lib/screens';
const SA_KEY_PATH = '/home/sirus/.config/gcloud/stellarbroadcast-service-account.json';
const PACKAGE_NAME = 'com.quickapps.stellar_broadcast';

// --- Google Auth via Service Account JWT ---

let cachedToken = null;
let tokenExpiry = 0;

function base64url(buf) {
  return buf.toString('base64').replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
}

async function getAccessToken() {
  if (cachedToken && Date.now() < tokenExpiry - 60000) return cachedToken;

  const saKey = JSON.parse(fs.readFileSync(SA_KEY_PATH, 'utf8'));
  const now = Math.floor(Date.now() / 1000);
  const header = base64url(Buffer.from(JSON.stringify({ alg: 'RS256', typ: 'JWT' })));
  const payload = base64url(Buffer.from(JSON.stringify({
    iss: saKey.client_email,
    scope: 'https://www.googleapis.com/auth/androidpublisher',
    aud: 'https://oauth2.googleapis.com/token',
    iat: now,
    exp: now + 3600
  })));
  const signInput = `${header}.${payload}`;
  const sign = crypto.createSign('RSA-SHA256');
  sign.update(signInput);
  const signature = base64url(sign.sign(saKey.private_key));
  const jwt = `${signInput}.${signature}`;

  return new Promise((resolve, reject) => {
    const postData = `grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer&assertion=${jwt}`;
    const req = require('https').request({
      hostname: 'oauth2.googleapis.com',
      path: '/token',
      method: 'POST',
      headers: { 'Content-Type': 'application/x-www-form-urlencoded', 'Content-Length': Buffer.byteLength(postData) }
    }, (res) => {
      let body = '';
      res.on('data', c => body += c);
      res.on('end', () => {
        try {
          const data = JSON.parse(body);
          if (data.access_token) {
            cachedToken = data.access_token;
            tokenExpiry = Date.now() + (data.expires_in || 3600) * 1000;
            resolve(cachedToken);
          } else {
            reject(new Error('No access_token: ' + body));
          }
        } catch (e) { reject(e); }
      });
    });
    req.on('error', reject);
    req.write(postData);
    req.end();
  });
}

async function playApiRequest(path) {
  const token = await getAccessToken();
  const base = `/androidpublisher/v3/applications/${PACKAGE_NAME}`;
  return new Promise((resolve, reject) => {
    const req = require('https').request({
      hostname: 'androidpublisher.googleapis.com',
      path: base + path,
      method: path.includes('edits') && !path.includes('/') ? 'POST' : 'GET',
      headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' }
    }, (res) => {
      let body = '';
      res.on('data', c => body += c);
      res.on('end', () => {
        try { resolve({ status: res.statusCode, data: JSON.parse(body) }); }
        catch (e) { resolve({ status: res.statusCode, data: body }); }
      });
    });
    req.on('error', reject);
    if (!path.includes('/')) req.write('{}');
    req.end();
  });
}

async function getPlayConsoleData() {
  try {
    // Create an edit
    const editRes = await playApiRequest('/edits');
    if (editRes.status !== 200) return { error: `Edit creation failed: ${JSON.stringify(editRes.data)}` };
    const editId = editRes.data.id;

    // Get tracks
    const tracksRes = await playApiRequest(`/edits/${editId}/tracks`);

    // Get app details
    const detailsRes = await playApiRequest(`/edits/${editId}/details`);

    // Cleanup edit
    const deleteToken = await getAccessToken();
    await new Promise((resolve) => {
      const req = require('https').request({
        hostname: 'androidpublisher.googleapis.com',
        path: `/androidpublisher/v3/applications/${PACKAGE_NAME}/edits/${editId}`,
        method: 'DELETE',
        headers: { 'Authorization': `Bearer ${deleteToken}` }
      }, resolve);
      req.on('error', resolve);
      req.end();
    });

    return { tracks: tracksRes.data, details: detailsRes.data };
  } catch (e) {
    return { error: e.message };
  }
}

// --- File system helpers ---

function getPubspecInfo() {
  try {
    const content = fs.readFileSync(PUBSPEC_PATH, 'utf8');
    const versionMatch = content.match(/^version:\s*(.+)$/m);
    const nameMatch = content.match(/^name:\s*(.+)$/m);
    return {
      version: versionMatch ? versionMatch[1].trim() : 'unknown',
      name: nameMatch ? nameMatch[1].trim() : 'unknown'
    };
  } catch (e) {
    return { version: 'error', name: 'error' };
  }
}

function getScreenList() {
  try {
    return fs.readdirSync(SCREENS_DIR)
      .filter(f => f.endsWith('_screen.dart'))
      .map(f => f.replace('_screen.dart', ''))
      .sort();
  } catch (e) { return []; }
}

function getScreenshots() {
  try {
    const results = [];
    for (const device of ['phone', 'tablet']) {
      const dir = path.join(SCREENSHOTS_DIR, device);
      if (!fs.existsSync(dir)) continue;
      for (const f of fs.readdirSync(dir).filter(f => f.endsWith('.png') || f.endsWith('.webm'))) {
        const stat = fs.statSync(path.join(dir, f));
        const screen = f.replace('.png', '').replace('.webm', '');
        const type = f.endsWith('.webm') ? 'webm' : 'png';
        results.push({ filename: `${device}/${f}`, device, screen, timestamp: stat.mtimeMs, size: stat.size, mtime: stat.mtime });
      }
    }
    return results.sort((a, b) => b.mtime - a.mtime);
  } catch (e) { return []; }
}

// --- Server ---

const MIME = {
  '.html': 'text/html', '.js': 'application/javascript', '.css': 'text/css',
  '.png': 'image/png', '.jpg': 'image/jpeg', '.json': 'application/json', '.svg': 'image/svg+xml',
  '.webm': 'video/webm', '.mp4': 'video/mp4'
};

const server = http.createServer(async (req, res) => {
  const url = new URL(req.url, `http://localhost:${PORT}`);
  res.setHeader('Access-Control-Allow-Origin', '*');

  if (url.pathname === '/api/info') {
    const info = getPubspecInfo();
    const screens = getScreenList();
    const screenshots = getScreenshots();
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ ...info, screens, screenshots }));
    return;
  }

  if (url.pathname === '/api/play-console') {
    try {
      const data = await getPlayConsoleData();
      res.writeHead(200, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify(data));
    } catch (e) {
      res.writeHead(500, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ error: e.message }));
    }
    return;
  }

  if (url.pathname === '/api/take-screenshot') {
    const device = url.searchParams.get('device') || 'phone';
    const screen = url.searchParams.get('screen') || 'unknown';
    const navigate = url.searchParams.get('navigate') !== 'false';
    const serial = device === 'tablet' ? 'emulator-5556' : 'emulator-5554';
    const ts = Date.now();
    const screenMap = { 'game_over': 'gameover', 'landing_sequence': 'landing-sequence' };
    const deviceDir = path.join(SCREENSHOTS_DIR, device);
    if (!fs.existsSync(deviceDir)) fs.mkdirSync(deviceDir, { recursive: true });
    const cleanScreen = (screenMap[screen] || screen).replace(/_/g, '-');
    const filename = `${device}/${cleanScreen}.png`;
    const filepath = path.join(SCREENSHOTS_DIR, filename);
    const { execSync, exec } = require('child_process');

    try {
      if (navigate && screen !== 'current' && screen !== 'unknown') {
        const routeScreen = screenMap[screen] || screen.replace(/_/g, '-');

        // Title screen: clear app data for a clean slate (no Resume Voyage).
        if (routeScreen === 'title') {
          execSync(`adb -s ${serial} shell pm clear ${PACKAGE_NAME}`, { timeout: 10000 });
          execSync('sleep 1', { shell: true });
          execSync(`adb -s ${serial} shell am start -n ${PACKAGE_NAME}/.MainActivity`, { timeout: 10000 });
          execSync('sleep 8', { shell: true });
          // Skip — no typewriter on title screen
          execSync(`adb -s ${serial} exec-out screencap -p > "${filepath}"`, { timeout: 10000, shell: true });
          const stat = fs.statSync(filepath);
          if (stat.size < 1000) { fs.unlinkSync(filepath); res.writeHead(500, { 'Content-Type': 'application/json' }); res.end(JSON.stringify({ error: 'Screenshot too small' })); }
          else { res.writeHead(200, { 'Content-Type': 'application/json' }); res.end(JSON.stringify({ filename, device, screen, timestamp: ts })); }
          return;
        }

        // All other screens: force stop and navigate via deep link.
        execSync(`adb -s ${serial} shell am force-stop ${PACKAGE_NAME}`, { timeout: 5000 });
        execSync(`sleep 0.5 && adb -s ${serial} shell am start -a android.intent.action.VIEW -d "stellarbroadcast://play?screen=${routeScreen}" -n ${PACKAGE_NAME}/.MainActivity`, { timeout: 10000, shell: true });
        execSync('sleep 6', { shell: true });
        // Tap to skip typewriter — tap at 50% height (outer GestureDetector covers all screens).
        // 3 rounds at 6s, 8s, 10s to catch varying load times.
        const sizeOut = execSync(`adb -s ${serial} shell wm size`, { timeout: 5000 }).toString();
        const m = sizeOut.match(/(\d+)x(\d+)/);
        if (m) {
          const w = parseInt(m[1]);
          const h = parseInt(m[2]);
          const cx = Math.floor(w / 2);
          const ty = Math.floor(h * 0.50);
          for (let round = 0; round < 3; round++) {
            execSync(`adb -s ${serial} shell input tap ${cx} ${ty}`, { timeout: 5000 });
            execSync('sleep 2', { shell: true });
          }
        }
        execSync('sleep 1', { shell: true });
      }

      execSync(`adb -s ${serial} exec-out screencap -p > "${filepath}"`, { timeout: 10000, shell: true });
      const stat = fs.statSync(filepath);
      if (stat.size < 1000) {
        fs.unlinkSync(filepath);
        res.writeHead(500, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ error: 'Screenshot too small' }));
      } else {
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ filename, device, screen, timestamp: ts }));
      }
    } catch (err) {
      res.writeHead(500, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ error: err.message }));
    }
    return;
  }

  // Record a WebM clip for a screen.
  // ?device=phone&screen=scan&duration=5 (default 5s)
  if (url.pathname === '/api/record-webm') {
    const device = url.searchParams.get('device') || 'phone';
    const screen = url.searchParams.get('screen') || 'unknown';
    const duration = Math.min(parseInt(url.searchParams.get('duration') || '5', 10), 15);
    const navigate = url.searchParams.get('navigate') !== 'false';
    const serial = device === 'tablet' ? 'emulator-5556' : 'emulator-5554';
    const screenMap = { 'game_over': 'gameover', 'landing_sequence': 'landing-sequence' };
    const cleanScreen = (screenMap[screen] || screen).replace(/_/g, '-');
    const webmDir = path.join(SCREENSHOTS_DIR, device);
    if (!fs.existsSync(webmDir)) fs.mkdirSync(webmDir, { recursive: true });
    const webmPath = path.join(webmDir, `${cleanScreen}.webm`);
    const tmpMp4 = `/tmp/stellar_record_${device}_${Date.now()}.mp4`;
    const { execSync } = require('child_process');

    try {
      if (navigate && screen !== 'current' && screen !== 'unknown') {
        const routeScreen = screenMap[screen] || screen.replace(/_/g, '-');
        execSync(`adb -s ${serial} shell am force-stop ${PACKAGE_NAME}`, { timeout: 5000 });
        execSync('sleep 0.5', { shell: true });
        execSync(`adb -s ${serial} shell am start -a android.intent.action.VIEW -d "stellarbroadcast://play?screen=${routeScreen}" -n ${PACKAGE_NAME}/.MainActivity`, { timeout: 10000, shell: true });
        // Wait for screen to load + skip typewriter
        execSync('sleep 6', { shell: true });
        const sizeOut = execSync(`adb -s ${serial} shell wm size`, { timeout: 5000 }).toString();
        const m = sizeOut.match(/(\d+)x(\d+)/);
        if (m) {
          const cx = Math.floor(parseInt(m[1]) / 2);
          const ty = Math.floor(parseInt(m[2]) * 0.50);
          execSync(`adb -s ${serial} shell input tap ${cx} ${ty}`, { timeout: 5000 });
          execSync('sleep 2', { shell: true });
          execSync(`adb -s ${serial} shell input tap ${cx} ${ty}`, { timeout: 5000 });
        }
        execSync('sleep 1', { shell: true });
      }

      // Record MP4 on device
      const deviceMp4 = `/sdcard/stellar_rec.mp4`;
      execSync(`adb -s ${serial} shell "screenrecord --time-limit ${duration} ${deviceMp4}"`, { timeout: (duration + 10) * 1000 });
      // Pull to local
      execSync(`adb -s ${serial} pull ${deviceMp4} ${tmpMp4}`, { timeout: 60000 });
      execSync(`adb -s ${serial} shell rm ${deviceMp4}`, { timeout: 5000 });
      // Convert to WebM (VP9, good quality, small size)
      execSync(`ffmpeg -y -i "${tmpMp4}" -c:v libvpx-vp9 -crf 30 -b:v 0 -an "${webmPath}"`, { timeout: 120000 });
      fs.unlinkSync(tmpMp4);

      const stat = fs.statSync(webmPath);
      res.writeHead(200, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ filename: `${device}/${cleanScreen}.webm`, device, screen, duration, size: stat.size }));
    } catch (err) {
      try { fs.unlinkSync(tmpMp4); } catch (_) {}
      res.writeHead(500, { 'Content-Type': 'application/json' });
      res.end(JSON.stringify({ error: err.message }));
    }
    return;
  }

  // Static files
  let filePath;
  if (url.pathname.startsWith('/screenshots/')) {
    filePath = path.join(SCREENSHOTS_DIR, url.pathname.replace('/screenshots/', ''));
    if (!filePath.startsWith(SCREENSHOTS_DIR)) { res.writeHead(403); res.end('Forbidden'); return; }
  } else {
    filePath = url.pathname === '/' ? '/index.html' : url.pathname;
    filePath = path.join(DASHBOARD_DIR, filePath);
    if (!filePath.startsWith(DASHBOARD_DIR)) { res.writeHead(403); res.end('Forbidden'); return; }
  }

  try {
    const stat = fs.statSync(filePath);
    if (stat.isFile()) {
      const ext = path.extname(filePath);
      res.writeHead(200, { 'Content-Type': MIME[ext] || 'application/octet-stream' });
      fs.createReadStream(filePath).pipe(res);
    } else {
      res.writeHead(404); res.end('Not Found');
    }
  } catch (e) {
    res.writeHead(404); res.end('Not Found');
  }
});

server.listen(PORT, () => {
  console.log(`Stellar Broadcast QA Dashboard running at http://localhost:${PORT}`);
});
