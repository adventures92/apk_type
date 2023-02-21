#!/bin/bash

# Check that the APK path argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/your/app.apk"
    exit 1
fi

# Check that the input file is an APK
mime_type=$(file -b --mime-type "$1" | tr -d '\n')
if [ "$mime_type" != "application/vnd.android.package-archive" ] && [ "$mime_type" != "application/zip" ]; then
    echo "Error: Not an APK file"
    exit 1
fi

# Extract the APK contents to a temporary directory
temp_dir=$(mktemp -d)
if ! unzip -q "$1" -d "$temp_dir"; then
    echo "Error: Failed to extract APK contents"
    rm -rf "$temp_dir"
    exit 1
fi

# Check if the APK contains a libflutter.so file
if [ -f "$temp_dir/lib/arm64-v8a/libflutter.so" ] || [ -f "$temp_dir/lib/armeabi-v7a/libflutter.so" ]; then
    apk_type="Flutter"

# Check if the APK contains a libreactnativejni.so file
elif [ -f "$temp_dir/lib/arm64-v8a/libreactnativejni.so" ] || [ -f "$temp_dir/lib/armeabi-v7a/libreactnativejni.so" ]; then
    apk_type="React Native"

# Check if the APK contains a libmonodroid.so file
elif [ -f "$temp_dir/lib/arm64-v8a/libmonodroid.so" ] || [ -f "$temp_dir/lib/armeabi-v7a/libmonodroid.so" ]; then
    apk_type="Xamarin"

# If none of the above conditions are met, assume it's a native app
else
    apk_type="Native"
fi

# Print the APK type
echo "APK type: $apk_type"

# Clean up the temporary directory
rm -rf "$temp_dir"
