#!/bin/bash
#
# build linux32 on github actions

ext="so"

cp -R jlibrary/* .
cp script/testga.ijs .
cp script/ver.ijs .

mkdir -p j32
cp bin/profile.ijs j32

cp version.txt jsrc/jversion.h
echo "#define jplatform \"$1\"" >> jsrc/jversion.h
echo "#define jlicense  \"commercial\"" >> jsrc/jversion.h
echo "#define jbuilder  \"www.jsoftware.com\"" >> jsrc/jversion.h

cd make2
./clean.sh

j64x=j32 USE_PYXES=1 ./build_jconsole.sh
j64x=j32 ./build_tsdll.sh
j64x=j32 USE_PYXES=1 ./build_libj.sh
./clean.sh
j64x=j32avx USE_PYXES=1 ./build_libj.sh
./clean.sh
j64x=j32avx2 USE_PYXES=1 ./build_libj.sh

cd ..
cp bin/$1/j32/* j32
cp bin/$1/j32avx/libj.$ext j32/libjavx.$ext
cp bin/$1/j32avx2/libj.$ext j32/libjavx2.$ext
chmod 324 j32/*
chmod 755 j32/jconsole
