#!/bin/sh
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" 
cd "$DIR"

if [[ $# -eq 0 ]]; then
    echo "Please enter the full path to the local copy of Td:"
    read TDLIB_PATH
else
    TDLIB_PATH="$1"
fi

if [ -d "$TDLIB_PATH" ]; then
    if [ -d "$TDLIB_PATH/example/ios/build" ]; then
        TD_BUILD_PATH="$TDLIB_PATH/example/ios/build" 
    elif [ -d "$TDLIB_PATH/build" ]; then
        TD_BUILD_PATH="$TDLIB_PATH/build" 
    else 
        echo "Tdlib build folder not found"
        exit -1
    fi

    if [ -d "$TDLIB_PATH/example/ios/third_party/openssl" ]; then
        OPENSSL_PATH="$TDLIB_PATH/example/ios/third_party/openssl"
    elif [ -d "$TDLIB_PATH/third_party/openssl" ]; then
        OPENSSL_PATH="$TDLIB_PATH/third_party/openssl"
    else 
        echo "OpenSSL build folder not found"
        exit -1
    fi
else 
    echo "Path not found"
    exit -1
fi

# copy .a files
platforms="macOS iOS iOS-simulator"
for platform in $platforms;
do
    LIB_PATH="$TD_BUILD_PATH/install-$platform/lib"
    OPENSSL_LIB_PATH="$OPENSSL_PATH/$platform/lib"
    INSTALL_PATH="$platform/lib"

    if [ -d "$LIB_PATH" ]; then
        find "$LIB_PATH" -name "*.a" -exec cp -v '{}' "$INSTALL_PATH" ';'
        find "$OPENSSL_LIB_PATH" -name "*.a" -exec cp -v '{}' "$INSTALL_PATH" ';'
    fi
done
