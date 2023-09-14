#!/bin/bash
echo "****************************************"
echo " Setting up Capstone Environment"
echo "****************************************"

echo "Installing Python 3.8 Virtual Environment"
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y python3.8-venv

echo "Making Python 3.8 the default..."
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1

echo "Checking the Python version..."
python3 --version

echo "Configuring the developer environment..."
echo 'export PS1="\[\e]0;\u:\W\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "' >> ~/.bashrc

echo "Installing Python depenencies..."
source ~/backend-pics-venv/bin/activate && python3 -m pip install --upgrade pip wheel
source ~/backend-pics-venv/bin/activate && pip install -r requirements.txt
echo "source ~/backend-pics-venv/bin/activate" >> ~/.bashrc

echo "****************************************"
echo " Capstone Environment Setup Complete"
echo "****************************************"
echo ""
echo "Use 'exit' to close this terminal and open a new one to initialize the environment"
echo ""