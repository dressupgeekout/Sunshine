#!/bin/sh

set -ex

# Let CMake see our external FFmpeg
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/pkg/lib/ffmpeg5/pkgconfig

# C++17 required
export PATH=/usr/pkg/gcc10/bin:${PATH}
