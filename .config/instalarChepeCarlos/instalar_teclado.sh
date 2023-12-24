#!/bin/sh

sudo apt install libusb-1.0-0-dev
sudo cp $(dirname $0)/50-zsa.rules  /etc/udev/rules.d/50-zsa.rules
sudo groupadd plugdev
sudo usermod -aG plugdev $USER