#!/bin/bash

export JAVA_HOME=/usr/local64/openjdk17
export CC=clang-morello
export CFLAGS="-march=morello+c64 -mabi=purecap"

ant jar && ant archive-platform-jar && mvn package