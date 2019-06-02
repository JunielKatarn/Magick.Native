#!/bin/bash
set -e

verifyNative() {
    local quantum=$1
    local folder=$2

    local file=$folder/Magick.Native-$quantum-x64.dll.so

    if ldd $file 2>&1 | grep "not found"
    then
        exit 1
    else
        echo "Verified ldd status for $file"
    fi
    if ld $file 2>&1 | grep "undefined reference"
    then
        exit 1
    else
        echo "Verified ld status for $file"
    fi
}

verifyNative "Q8" $1
verifyNative "Q16" $1
verifyNative "Q16-HDRI" $1
