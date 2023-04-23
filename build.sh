#!/bin/sh
FILE_NO_EXTENSION='main'

export PATH=$PATH:./musl-dist/bin
rm -f $FILE_NO_EXTENSION

libc="musl-dist"
libc_inc=$libc"/include"
libc_lib=$libc"/lib"
MUSL_FLAGS="-fuse-ld=lld -static -nostdinc --sysroot $libc -isystem $libc_inc -L-user-start -L $libc_lib -L-user-end"

clang $MUSL_FLAGS -o $FILE_NO_EXTENSION $FILE_NO_EXTENSION.c
