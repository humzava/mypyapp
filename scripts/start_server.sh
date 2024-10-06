#!/bin/bash
cd /home/ubuntu/python_app  # Change this to your application's directory
gunicorn -w 3 -b 0.0.0.0:5000 app:app &  # Start the Flask app using Gunicorn
