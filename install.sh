#!/bin/bash

cd "$(dirname "$0")"

mkdir -p assets

docker build . -t "buildozer-webkivy"
