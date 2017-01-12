#!/bin/bash

cd "$(dirname "$0")"

docker run -it \
  --privileged -v /dev/bus/usb:/dev/bus/usb \
  -v $PWD/webkivy:/usr/src/app \
  -v $PWD/assets:/root/.buildozer \
  -v $PWD/config/buildozer.spec:. \
  "buildozer-webkivy" \
  bash
  #-v $PWD/assets:/src/assets \
