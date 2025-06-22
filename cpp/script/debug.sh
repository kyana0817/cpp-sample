#!/bin/bash

cmake -S . -G Ninja -B build -DCMAKE_BUILD_TYPE=Debug
sh script/build.sh
