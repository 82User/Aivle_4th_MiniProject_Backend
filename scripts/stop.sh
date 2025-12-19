#!/bin/bash
set +e

APP_PATH=/home/ubuntu/app

# plain.jar 제외
PID=$(pgrep -f "$APP_PATH/.*\.jar" | head -n 1)

if [ -n "$PID" ]; then
  echo "Stopping application (PID=$PID)"
  kill -15 "$PID"
  sleep 5
else
  echo "No running application found"
fi

exit 0
