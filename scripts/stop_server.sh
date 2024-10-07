#!/bin/bash

LOGFILE=/home/ubuntu/python_app/scripts/stop_server.log

# Start logging
{
    echo "=== Stopping Gunicorn Server ==="
    echo "Current date and time: $(date)"

    # Check if Gunicorn is running
    if pgrep -f gunicorn > /dev/null; then
        echo "Stopping Gunicorn server..."
        pkill gunicorn
        
        if [ $? -eq 0 ]; then
            echo "Gunicorn server stopped successfully."
        else
            echo "Failed to stop Gunicorn server. Check if the process is running."
            exit 1
        fi
    else
        echo "No Gunicorn server is currently running."
    fi

    echo "=== End of stop_server.sh ==="
} &>> "$LOGFILE"
