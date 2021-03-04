#!/bin/sh
if [ $1 == "-b" ]; then
  rm -rf build main
  mkdir build
  cd build
  cmake ..
  make
  cd ..
fi

if [ ! -f "./main" ]; then
  rm -rf build
  mkdir build
  cd build
  cmake ..
  make
  cd ..
fi

./main
