#!/bin/bash
# This script builds the updated https compliant jar patch
# To build, specify a World Wind 2.0.0 worldwind.jar as the first argument
# This build script only works with unix based machines
rm -r build/
mkdir build
javac -d build/ -classpath $1 src/gov/nasa/worldwind/layers/Earth/NASAWFSPlaceNameLayerHttps.java
cp -r src/worldwind-2.0.0-https-patch build/
cd build/
jar cvf worldwind-2.0.0-https-patch.jar gov worldwind-2.0.0-https-patch