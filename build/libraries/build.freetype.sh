#!/bin/bash
set -e

cd freetype
mkdir __build
cd __build
$CMAKE_COMMAND .. -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_DISABLE_FIND_PACKAGE_BZip2=TRUE -DBUILD_SHARED_LIBS=off -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS="$FLAGS"
$MAKE install
