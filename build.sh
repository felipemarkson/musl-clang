#!/bin/sh
FILE_NO_EXTENSION='main'

export PATH=$PATH:./musl-dist/bin
rm -f main

musl-clang -o $FILE_NO_EXTENSION $FILE_NO_EXTENSION.c

