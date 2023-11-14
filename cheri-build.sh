#!/bin/bash

export JAVA_HOME=/usr/local64/openjdk17
export CC=clang-morello
export CFLAGS="-march=morello+c64 -mabi=purecap"
export LDFLAGS=""

ant -Duse.system.libffi=1 jar && ant -Duse.system.libffi=1 archive-platform-jar && mvn package