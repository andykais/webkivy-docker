#!/bin/bash

cd "$(dirname "$0")"

mkdir -p assets/globalbuildozer
mkdir -p assets/localbuildozer
mkdir -p assets/apk

docker build . -t "buildozer-webkivy"
