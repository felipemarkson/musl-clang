#!/bin/sh
FILE_NO_EXTENSION='main'

export PATH=$PATH:./musl-dist/bin
rm -f main

libc="musl-dist"
libc_inc="musl-dist/include"
libc_lib="musl-dist/lib"
MUSL_FLAGS="-fuse-ld=lld -static -nostdinc --sysroot $libc -isystem $libc_inc -L-user-start -L $libc_lib -L-user-end"

clang $MUSL_FLAGS -o $FILE_NO_EXTENSION $FILE_NO_EXTENSION.c
