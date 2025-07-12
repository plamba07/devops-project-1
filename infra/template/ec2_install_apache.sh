#!/bin/bash
exec > /var/log/user-data.log 2>&1
set -x

cd /home/ubuntu

# Update and install dependencies
sudo apt update -y
sudo apt install -y python3 python3-venv git

# Clone the repo
git clone https://github.com/rahulwagh/python-mysql-db-proj-1.git
cd python-mysql-db-proj-1

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install Python packages inside venv
./venv/bin/pip install -r requirements.txt

# Run the Flask app in the background with logs
nohup ./venv/bin/python3 app.py > app.log 2>&1 &
