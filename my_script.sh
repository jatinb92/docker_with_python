#!/bin/bash
echo "Script started!"  # Log a message
python3 --version
python3 -m venv path/to/venv

ls

function activate_venv() {
    source ./venv/bin/activate
}

function deactivate_venv() {
    deactivate
}

activate_venv

pip3 install -r requirements.txt

python3 my_python.py

# Your script logic here
echo "Script finished!"  # Log another message

