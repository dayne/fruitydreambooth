#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y python-imaging python-gdata python-imaging-tk luakit

sudo pip install --upgrade google-api-python-client
sudo update-alternatives --configure x-www-browser


