#!/bin/bash

./build.sh

cp -R ./build/BlackHole.driver /Library/Audio/Plug-Ins/HAL/Claap.driver

sudo killall -9 -c coreaudiod -u _coreaudiod
# or equivalent
# sudo launchctl kickstart -k system/com.apple.audio.coreaudiod