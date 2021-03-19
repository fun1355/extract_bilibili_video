#!/bin/bash

adb pull /sdcard/Android/data/com.bilibili.app.in ~/Downloads/Android/data/

[[ ! -h resource_linux ]] && ln -sf ~/Downloads/Android/data/com.bilibili.app.in/download resource_linux
[[ ! -h output_linux ]] && ln -sf ~/Videos output_linux


python ./main.py
