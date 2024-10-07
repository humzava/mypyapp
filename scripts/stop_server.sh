#!/bin/bash

LOGFILE=/home/ubuntu/python_app/scripts/stop_server.log

{
    echo "Stopping Gunicorn server..."
    if pgrep -f gunicorn > /dev/null; then
        pkill gunicorn
        echo "Gunicorn server stopped."
    else
        echo "No Gunicorn server is running."
    fi
} &>> "$LOGFILE"
