# musl with Clang

An example of how to compile a "Hello, World" using [musl](https://musl.libc.org/) `libc` and [Clang](https://clang.llvm.org/) in Linux without [glibc](https://en.wikipedia.org/wiki/Glibc) as a dependency.

> Clone this repo with submodules

> This example uses `musl-1.2.3`. To change it, just go to musl file and change the branch.

## Why?

Well, primarily because I didn't know if it was possible. The `glibc` is an intrinsic part of all GNU/Linux SOs.
Thus, every time that you try to compile some C program in GNU/Linux SOs you are tied to `glibc`, so you are tied
to [`LGPL`](https://sourceware.org/git/?p=glibc.git;f=COPYING.LIB;hb=HEAD).

Generally, this is not a big problem if you are linking against `glibc` dynamically. But, this could
be a problem, if you are linking to `glibc` statically or you need to change some `glibc` implementation for some reason because you are obligated to use `LGPL` or `GPL` as the license for your binaries.

Despite understanding the historical reason for it, I do not like this approach for modern [Free Software](https://en.wikipedia.org/wiki/Free_software).  I prefer something like [MPL v2](https://www.mozilla.org/en-US/MPL/2.0/) because:
> [...] You may distribute such Executable Form under the terms of this License, or sublicense it under different terms, provided that the license for the Executable Form does not attempt to limit or alter the recipients’ rights in the Source Code Form under this License. (MPL v2 - 3.2.b)


Second, `glibc` has a lot of other libraries, especially for dealing with Linux details, and you may want something more C-standard compliant (as I prefer), and the musl's `libc` aims it.

The reason for Clang is that the example should also work on macOS and Windows, and GCC is not available on theses OSs.

## Dependencies

- Git version 2.40 or greater;
- LLVM and Clang version 15.0 or greater;

## Build on Linux (may works on macOS)

1. Build musl: `./build-musl.sh`;
2. Build the main: `./build.sh`;
