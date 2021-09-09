#!/bin/bash

# get WALA
if test ! -e WALA; then
    git clone https://github.com/wala/WALA
    cd WALA
    git checkout
    ./gradlew clean build publishToMavenLocal -x test
    cd ..
fi

mvn clean install


