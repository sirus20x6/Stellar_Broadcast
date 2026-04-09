package com.quickapps.stellar_broadcast

import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES20
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
    }

    /**
     * If the device has a GPU/driver combination known to crash with
     * Impeller's Vulkan backend, force the OpenGL ES backend instead.
     *
     * Flutter reads "--impeller-backend=opengles" from the shell args
     * returned by [getFlutterShellArgs]. We inject it here so the
     * decision is made per-device at runtime.
     */
    override fun getFlutterShellArgs(): io.flutter.embedding.engine.FlutterShellArgs {
        val args = super.getFlutterShellArgs()
        if (shouldForceOpenGL()) {
            args.add("--impeller-backend=opengles")
        }
        return args
    }

    /**
     * Heuristic: force OpenGL ES on devices where Vulkan drivers are
     * known to be unreliable with Impeller.
     *
     * Criteria (any match → force GLES):
     *   1. GPU vendor/renderer on the blocklist
     *   2. Low-end SoC (API < 29 or low RAM)
     *   3. Known bad device models
     */
    private fun shouldForceOpenGL(): Boolean {
        // Known bad device models (from Play Console crash reports).
        val badModels = setOf(
            "a03su",    // Samsung Galaxy A03s — Mali-G52, bad Vulkan driver
            "a03",
            "a04",
            "a04s",
            "a13",
            "a14",
        )
        val model = Build.MODEL.lowercase()
        if (badModels.any { model.contains(it) }) return true

        // Devices running Android 9 or below often have incomplete Vulkan.
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) return true

        // Check GPU renderer string for known problematic drivers.
        val renderer = getGpuRenderer()
        if (renderer != null) {
            val lower = renderer.lowercase()
            // Mali-G52 and older Mali GPUs have widespread Vulkan issues.
            if (lower.contains("mali-g52")) return true
            if (lower.contains("mali-g51")) return true
            if (lower.contains("mali-t")) return true  // Mali-T series (very old)
            // PowerVR GPUs have spotty Vulkan support.
            if (lower.contains("powervr")) return true
        }

        return false
    }

    /**
     * Queries the GPU renderer string via a temporary EGL context.
     * Returns null if the query fails (non-fatal).
     */
    private fun getGpuRenderer(): String? {
        var display: EGLDisplay? = null
        var context: EGLContext? = null
        var surface: EGLSurface? = null
        try {
            display = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            if (display == EGL14.EGL_NO_DISPLAY) return null

            val version = IntArray(2)
            if (!EGL14.eglInitialize(display, version, 0, version, 1)) return null

            val configAttribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_NONE
            )
            val configs = arrayOfNulls<EGLConfig>(1)
            val numConfigs = IntArray(1)
            EGL14.eglChooseConfig(display, configAttribs, 0, configs, 0, 1, numConfigs, 0)
            if (numConfigs[0] == 0) return null

            val contextAttribs = intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION, 2,
                EGL14.EGL_NONE
            )
            context = EGL14.eglCreateContext(display, configs[0]!!, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)
            if (context == EGL14.EGL_NO_CONTEXT) return null

            val surfaceAttribs = intArrayOf(
                EGL14.EGL_WIDTH, 1,
                EGL14.EGL_HEIGHT, 1,
                EGL14.EGL_NONE
            )
            surface = EGL14.eglCreatePbufferSurface(display, configs[0]!!, surfaceAttribs, 0)
            if (surface == EGL14.EGL_NO_SURFACE) return null

            EGL14.eglMakeCurrent(display, surface, surface, context)
            return GLES20.glGetString(GLES20.GL_RENDERER)
        } catch (_: Exception) {
            return null
        } finally {
            if (display != null && display != EGL14.EGL_NO_DISPLAY) {
                EGL14.eglMakeCurrent(display, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
                if (surface != null) EGL14.eglDestroySurface(display, surface)
                if (context != null) EGL14.eglDestroyContext(display, context)
                EGL14.eglTerminate(display)
            }
        }
    }
}
