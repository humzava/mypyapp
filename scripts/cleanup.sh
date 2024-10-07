#!/bin/bash
# Delete all files in the /home/ubuntu/python_app/scripts directory except cleanup.sh
find /home/ubuntu/python_app/scripts -mindepth 1 ! -name 'cleanup.sh' -delete
