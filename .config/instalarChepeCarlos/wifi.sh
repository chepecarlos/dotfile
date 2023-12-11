#!/bin/sh

sudo apt install git dkms
git clone https://github.com/cilynx/rtl88x2bu.git
sudo dkms add ./rtl88x2bu
sudo dkms install rtl88x2bu/5.8.7.1
