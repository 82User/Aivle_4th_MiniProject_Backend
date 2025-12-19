#!/bin/bash
set +e

APP_PATH=/home/ubuntu/app
JAR=$(ls $APP_PATH/*.jar | grep -v plain | head -n 1)

echo "Starting app: $JAR"

nohup java -jar "$JAR" \
  --spring.profiles.active=prod \
  > $APP_PATH/app.log 2>&1 &

exit 0
