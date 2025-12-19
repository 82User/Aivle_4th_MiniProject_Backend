#!/bin/bash

APP_NAME=app.jar
APP_PATH=/home/ec2-user/app

PID=$(pgrep -f $APP_NAME)

if [ -n "$PID" ]; then
  echo "Stopping application (PID=$PID)"
  kill -15 $PID
  sleep 5
else
  echo "No running application found"
fi
