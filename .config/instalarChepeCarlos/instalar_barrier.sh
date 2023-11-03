
sudo apt update

sudo apt install barrier

sudo cp barrier.service /etc/systemd/system/barrier.service

sudo systemctl enable barrier.service
sudo systemctl stop barrier.service
sudo systemctl start barrier.service