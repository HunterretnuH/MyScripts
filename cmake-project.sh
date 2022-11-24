#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: cmake-project {c,cpp} <project_name>"
    exit
fi

TYPE=$1
PROJECT=$2

mkdir -p $PROJECT/build
echo "cmake_minimum_required(VERSION 3.10)" > $PROJECT/CMakeLists.txt
echo "project($PROJECT)" >> $PROJECT/CMakeLists.txt
echo -e "add_executable($PROJECT main.$TYPE)\n" >> $PROJECT/CMakeLists.txt
echo -e "\n\nint main(int argc, char* argv[])\n{\n\n\treturn 0;\n}\n" > $PROJECT/main.$TYPE

cd $PROJECT/build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
ln -s $(pwd)/compile_commands.json ../
cd ..
nvim main.$TYPE
