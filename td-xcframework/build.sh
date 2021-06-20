#!/bin/sh

rm -rf build
mkdir -p build

# iOS devices
xcodebuild archive \
    -scheme iOS \
    -archivePath "./build/ios.xcarchive" \
    -sdk iphoneos \
    -configuration Release \
    SKIP_INSTALL=NO

# iOS simulator
xcodebuild archive \
    -scheme iOS-simulator \
    -archivePath "./build/ios_sim.xcarchive" \
    -sdk iphonesimulator \
    -configuration Release \
    SKIP_INSTALL=NO
    
# macOS
xcodebuild archive \
    -scheme macOS \
    -archivePath "./build/macos.xcarchive" \
    -configuration Release \
    SKIP_INSTALL=NO

# make framework
xcodebuild -create-xcframework \
    -framework "./build/ios.xcarchive/Products/Library/Frameworks/TdLib.framework" \
    -framework "./build/ios_sim.xcarchive/Products/Library/Frameworks/TdLib.framework" \
    -framework "./build/macos.xcarchive/Products/Library/Frameworks/TdLib.framework" \
    -output "./build/TdLib.xcframework"

# remove build artifacts
rm -r ./build/ios.xcarchive
rm -r ./build/ios_sim.xcarchive
rm -r ./build/macos.xcarchive