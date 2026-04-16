# Flutter-specific ProGuard rules

# Keep Flutter engine
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# -----------------------------------------------------------------------------
# Google Mobile Ads SDK + mediation framework
# R8 strips reflection-accessed adapter classes in release builds without these
# keeps. Symptom: match rates crater for mediation partners.
# -----------------------------------------------------------------------------
-keep class com.google.android.gms.ads.** { *; }
-keep class com.google.ads.** { *; }
-keep class com.google.ads.mediation.** { *; }
-dontwarn com.google.ads.mediation.**

# -----------------------------------------------------------------------------
# AppLovin (MAX mediation adapter + SDK classes)
# -----------------------------------------------------------------------------
-keep class com.applovin.** { *; }
-keep class com.applovin.mediation.** { *; }
-dontwarn com.applovin.**

# -----------------------------------------------------------------------------
# Unity Ads SDK + AdMob mediation adapter
# -----------------------------------------------------------------------------
-keep class com.unity3d.ads.** { *; }
-keep class com.unity3d.services.** { *; }
-keep class com.google.ads.mediation.unity.** { *; }
-dontwarn com.unity3d.**
-dontwarn com.unity3d.ads.**
-dontwarn com.unity3d.services.**

# -----------------------------------------------------------------------------
# Meta Audience Network (Facebook Ads) + transitive deps
# The adapter requires not just com.facebook.ads but the underlying Bolts
# task framework and internal implementation classes.
# -----------------------------------------------------------------------------
-keep class com.facebook.ads.** { *; }
-keep class com.facebook.internal.** { *; }
-keep class com.google.ads.mediation.facebook.** { *; }
-keep class bolts.** { *; }
-dontwarn com.facebook.**
-dontwarn com.facebook.infer.annotation.**
-dontwarn bolts.**

# Keep annotations
-keepattributes *Annotation*
-keepattributes Signature

# Suppress Play Core split install warnings (referenced by Flutter engine
# but not used directly — deferred delivery not enabled).
-dontwarn com.google.android.play.core.splitcompat.SplitCompatApplication
-dontwarn com.google.android.play.core.splitinstall.**
-dontwarn com.google.android.play.core.tasks.**

# Firebase / Crashlytics (accessed via reflection)
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.internal.** { *; }
-dontwarn com.google.firebase.**
