rm -rf ./musl-dist/bin
rm -rf ./musl-dist/include
rm -rf ./musl-dist/lib
cd musl && make clean && rm config.mak