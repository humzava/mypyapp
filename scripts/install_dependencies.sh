#!/bin/bash
sudo systemctl stop python_app.service
cd /home/ubuntu/python_app  # Change this to your application's directory
sudo apt install python3-pip -y
sudo apt install python3-venv
python3 -m venv venv
source venv/bin/activate
pip3 install -r /home/ubuntu/python_app/requirements.txt
exit
