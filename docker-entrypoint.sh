#!/bin/bash
set -e

if [ ! -s ${imaotai}/config/config.json ]; then
  echo "检测到config配置目录下不存在config.json，从示例文件复制一份用于初始化...\n"
  cp -fv ${imaotai}/config/config.json ${imaotai}/config/config.json
  cp -fv ${imaotai}/config/sendNotify.js ${imaotai}/config/sendNotify.js
fi

if [ -s ${imaotai}/config/config.json ]; then
  echo "检测到config配置目录下存在config.json，即将启动...\n"

fi

exec "$@"
