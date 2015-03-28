#!/usr/bin/env bash

apt-get update
apt-get install git -y
apt-get install python-dev -y
apt-get install python-pip -y
apt-get install libxml2-dev libxslt1-dev zlib1g-dev -y

pip install virtualenv
pip install virtualenvwrapper

sudo su vagrant <<'EOF'
mkdir ~/.virtualenvs
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
source /usr/local/bin/virtualenvwrapper.sh
EOF
