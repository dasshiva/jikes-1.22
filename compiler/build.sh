#!/bin/bash

set -e
if [ ! -f .configured ]
then
    CXX=clang++ ./configure --enable-source15 --enable-jikes-namespace --enable-debug --build=$1
    touch .configured
    echo $(date) >> .configured
fi

make
cp src/jikes ../bin/
