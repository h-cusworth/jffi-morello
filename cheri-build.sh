#!/bin/bash

export JAVA_HOME=/usr/local64/openjdk17
export CFLAGS="-march=morello+c64 -mabi=purecap -I/usr/local/include"
export CC=clang-morello
export LDFLAGS="-mabi=purecap -fuse-ld=lld -L/usr/local/lib -lffi"

ant -Duse.system.libffi=1 jar && ant -Duse.system.libffi=1 archive-platform-jar && mvn package
