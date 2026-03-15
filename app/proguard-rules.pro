# Add project specific ProGuard rules here.
-keep class com.poverka.app.data.model.** { *; }
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}

# Retrofit
-keepattributes Signature
-keepattributes Exceptions
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }

# OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**

# Gson
-keep class com.google.gson.** { *; }
-keepattributes *Annotation*

# ZXing
-keep class com.google.zxing.** { *; }
-keep class com.journeyapps.** { *; }
