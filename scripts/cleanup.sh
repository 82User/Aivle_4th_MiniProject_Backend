#!/bin/bash

APP_PATH=/home/ec2-user/app

echo "Cleanup started..."

# 디렉토리 없으면 그냥 통과
if [ ! -d "$APP_PATH" ]; then
  echo "App directory does not exist. Skipping cleanup."
  exit 0
fi

# jar 없어도 실패하지 않게
rm -f $APP_PATH/*.jar || true

echo "Cleanup finished."
exit 0
