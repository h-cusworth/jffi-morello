# jffi

Java bindings for libffi.

## Building

ant jar && ant archive-platform-jar && mvn package

## Build notes for MacOS

Building the library for MacOS requires a version of Xcode that supports 32-bit configurations. As of this writing,
the most recent version that supports 32-bit is Xcode 9.4.1.

The 9.4.1 version of Xcode is available at the following URL (requires Apple developer login):

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_9.4.1/Xcode_9.4.1.xip

## Build notes for minimal port to purecap for Elysium

Initially thought the build required build of libffi. As such, have replaced jni/libffi with [cheri libffi v3.4.4](https://github.com/CTSRD-CHERI/libffi/tree/v3.4.4-cheriabi) and copied across the makefiles/configure/install-sh scripts added by the jffi build. 
However, currently the build is using the system lib (see cheri-build.sh) so this isn't actually being used. 


