#!/bin/bash
#
# test linux/macOS on github actions
#
# argument is linux|darwin [32]
#
# current macOS github builder only supports avx
# cpu is Xeon E5-1650 v2 (from 2013)

if [ $2 == "32" ]; then
  B=32
else
  B=64
fi

if [ $1 == "linux" ]; then
  ext="so"
elif [ "$1" == "darwin" ]; then
  ext="dylib"
else
  echo "argument is linux|darwin"
  exit 1
fi

ls -l j$B

j$B/jconsole -lib libj.$ext testga.ijs
j$B/jconsole -lib libjavx.$ext testga.ijs

if [ $1 == "linux" ]; then
  j$B/jconsole -lib libjavx2.$ext testga.ijs
fi

if [ $B == 32 ]; then
  mv testlinux.txt testlinux32.txt
fi
