#!/bin/bash
set -e

cd exr/imath
$CMAKE_COMMAND . -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=off -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=off -DCMAKE_CXX_FLAGS="$FLAGS"
$MAKE install
cd ../openexr
$CMAKE_COMMAND . -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_SHARED_LIBS=off -DCMAKE_BUILD_TYPE=Release -DINSTALL_OPENEXR_EXAMPLES=off -DBUILD_TESTING=off -DOPENEXR_BUILD_UTILS=off -DOPENEXR_INSTALL_EXAMPLES=off $OPENEXR_OPTIONS -DCMAKE_CXX_FLAGS="$FLAGS"
$MAKE install
