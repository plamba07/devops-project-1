#!/bin/bash
# Log everything
exec > /var/log/user-data.log 2>&1
set -x

cd /home/ubuntu

# Update packages and install dependencies
sudo apt update -y
sudo apt install -y python3 python3-pip python3-venv git

# Clone the app
git clone https://github.com/rahulwagh/python-mysql-db-proj-1.git
cd python-mysql-db-proj-1

# Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install required Python packages
./venv/bin/pip install -r requirements.txt

# Run the app and log output
nohup ./venv/bin/python3 app.py > app.log 2>&1 &
