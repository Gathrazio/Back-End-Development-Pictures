#!/bin/bash
echo "****************************************"
echo " Setting up Capstone Environment"
echo "****************************************"

echo "Installing a python virtual environment"
sudo apt-get update
pip install virtualenv
echo "Give the venv a name: "
read venvironment
source ./{$venvironment}/bin/activate && python3 -m pip install --upgrade pi wheel
source ./{$venvironment}/bin/activate && pip install -r requirements.txt
echo "source ./{$venvironment}/bin/activate" >> ~/.bashrc

echo "Configuring the developer environment..."
echo 'export PS1="\[\e]0;\u:\W\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "' >> ~/.bashrc

echo "****************************************"
echo " Capstone Environment Setup Complete"
echo "****************************************"
echo ""
echo "Use 'exit' to close this terminal and open a new one to initialize the environment"
echo ""