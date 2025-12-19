#!/bin/bash
set +e

APP_PATH=/home/ec2-user/app

echo "[cleanup] start"

if [ ! -d "$APP_PATH" ]; then
  echo "[cleanup] app directory does not exist, skip"
  exit 0
fi

rm -f "$APP_PATH"/*.jar || true

echo "[cleanup] done"
exit 0
