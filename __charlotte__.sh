#!/bin/sh

set -ex

# Let CMake see our external FFmpeg
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/pkg/lib/ffmpeg5/pkgconfig

# C++17 required
export PATH=/usr/pkg/gcc10/bin:${PATH}

cmake .. \
  -DSUNSHINE_ENABLE_DRM:BOOL=OFF \
  -DSUNSHINE_ENABLE_X11:BOOL=ON \
  -DSUNSHINE_ENABLE_WAYLAND:BOOL=OFF \
  -DSUNSHINE_ENABLE_CUDA:BOOL=OFF \
  -DSUNSHINE_ENABLE_TRAY:BOOL=OFF
