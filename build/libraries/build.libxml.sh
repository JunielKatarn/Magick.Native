#!/bin/bash
set -e

cd libxml
autoreconf -fiv
$CONFIGURE $CONFIGURE_OPTIONS --with-python=no --enable-static --disable-shared $LIBXML_OPTIONS CFLAGS="$FLAGS"
$MAKE install
