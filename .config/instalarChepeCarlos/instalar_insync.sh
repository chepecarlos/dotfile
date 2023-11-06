#!/bin/sh

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C

echo "deb http://apt.insync.io/mint victoria non-free contrib" | sudo tee -a  /etc/apt/sources.list.d/insync.list > /dev/null

sudo apt-get update

sudo apt-get install -y insync insync-nemo
