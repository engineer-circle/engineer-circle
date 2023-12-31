# Crashlytics
# https://firebase.google.com/docs/crashlytics/get-deobfuscated-reports?hl=ja#android
-keepattributes SourceFile,LineNumberTable        # Keep file names and line numbers.
-keep public class * extends java.lang.Exception  # Optional: Keep custom exceptions.

# Google Play Core
-keep class com.google.android.play.core.** { *; }
