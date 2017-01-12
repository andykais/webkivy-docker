#!/bin/bash

cd "$(dirname "$0")"

WORKDIR=/usr/src/app

docker run -it \
  --privileged -v /dev/bus/usb:/dev/bus/usb \
  -v $PWD/assets/globalbuildozer:/root/.buildozer \
  -v $PWD/assets/localbuildozer:$WORKDIR/.buildozer \
  -v $PWD/assets/apk:$WORKDIR/bin \
  -v $PWD/config/buildozer.spec:$WORKDIR/buildozer.spec:ro \
  "buildozer-webkivy" \
  bash
