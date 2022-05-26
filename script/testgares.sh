#!/bin/bash
#
# read any test results into tests.txt

if [ $1 == "32" ]; then
  cat "testlinux.txt" > "tests32.txt"
  exit 0
fi

T=tests.txt
> $T

f() { if [ -e $1 ]; then cat $1 >> $T; fi }

f "testlinux.txt"
f "testdarwin.txt"
f "testwin.txt"
