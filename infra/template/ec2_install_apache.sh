#!/bin/bash
set -e

# Update and install dependencies
apt update -y
apt install -y python3 python3-pip python3-venv git

# Go to home directory
cd /home/ubuntu

# Clone the app repository
git clone https://github.com/rahulwagh/python-mysql-db-proj-1.git
cd python-mysql-db-proj-1

# Create a Python virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install Python dependencies
pip install -r requirements.txt

# Wait for a few seconds before starting the app
echo "Waiting before starting the app..."
sleep 10

# Start the app with logging
nohup venv/bin/python3 app.py > app.log 2>&1 &
