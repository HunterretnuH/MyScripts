#!/bin/bash

cd build
if [ "$1" == "-d" ]; then

    cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
else
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
fi

cmake --build .

