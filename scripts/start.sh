#!/bin/bash

APP_PATH=/home/ec2-user/app
APP_NAME=$(ls $APP_PATH/*.jar | head -n 1)

echo "Starting application: $APP_NAME"

nohup java -jar $APP_NAME \
  --spring.profiles.active=prod \
  > $APP_PATH/app.log 2>&1 &
