#!/bin/bash

mkdir build
cd build

cmake $CMAKE_ARGS \
  -DCMAKE_BUILD_TYPE="Release" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DCODA_BUILD_PYTHON=True \
  -DCODA_WITH_HDF4=True \
  -DCODA_WITH_HDF5=True \
  ..

make -j$CPU_COUNT
make install
