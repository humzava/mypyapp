#!/bin/bash
find /home/ubuntu/python_app -mindepth 1 ! -regex '^/home/ubuntu/python_app/scripts\(/.*\)?' -delete
