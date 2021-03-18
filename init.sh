#!/bin/bash

adb pull /sdcard/Android/data/com.bilibili.app.in ~/Downloads/Android/data/

[[ -d ./resource_linux ]] && rm ./resource_linux -rf
[[ -d ./output_linux ]] && rm ./output_linux -rf
ln -sf ~/Downloads/Android/data/com.bilibili.app.in/download resource_linux
ln -sf ~/Videos/ output_linux

python ./main.py
