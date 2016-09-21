#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y ruby-dev git fswebcam tmux


which chruby &> /dev/null
  if [ $? -eq 1 ]; then
    echo "#>> missing chruby - installing"
    cd chruby
    sudo make install
    grep chruby.sh ~/.bashrc
    if [ $? -eq 1 ]; then
    	echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bashrc
    fi
    cd ..
  else
    echo "#>> installed already: chruby"
  fi

which ruby-install &> /dev/null
if [ $? -eq 1 ]; then
	echo "#>> missing ruby-install : installing"
	cd ruby-install
	sudo make install
	cd ..
fi

source /usr/local/share/chruby/chruby.sh

ruby-install ruby 2.3.1

grep 2.3.1 ~/.bashrc
if [ $? -eq 1 ]; then
		echo "chruby 2.3.1" >> ~/.bashrc
fi

if [ ! -f bin/ngrok ]; 
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
	unzip -d bin/ ngrok-stable-linux-arm.zip
	rm ngrok-stable-linux-arm.zip
fi
