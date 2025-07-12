#!/bin/bash
set -e
exec > /var/log/user-data.log 2>&1

cd /home/ubuntu
apt update -y
apt install -y python3 python3-pip python3-venv git

# Clone repo
git clone https://github.com/rahulwagh/python-mysql-db-proj-1.git
cd python-mysql-db-proj-1

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
venv/bin/pip install -r requirements.txt

# Start app in background and log output
nohup venv/bin/python3 app.py > app.log 2>&1 &
