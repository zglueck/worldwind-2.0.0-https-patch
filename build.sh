#!/bin/bash
rm -r build/
mkdir build
javac -d build/ -classpath $1 src/gov/nasa/worldwind/layers/Earth/NASAWFSPlaceNameLayerHttps.java
cp -r src/worldwind-2.0.0-https-patch build/
cd build/
jar cvf worldwind-2.0.0-https-patch.jar gov worldwind-2.0.0-https-patch