#!/bin/bash
echo "Installing Dependencies"
sudo apt-get update
sudo apt-get install python-pip cmake python-numpy python-skimage python-sklearn libopencv-dev python-opencv nmap -y
sudo apt-get install screen -y
sudo apt-get install --no-install-recommends libboost-all-dev -y

sudo apt-get install libatlas-base-dev -y

sudo apt-get install libssl-dev libopencv-dev python-dev python-numpy python-skimage -y

sudo apt-get install zip unzip autoconf automake libtool curl zlib1g-dev maven -y

sudo apt-get install swig python-dev python-wheel htop cmake-curses-gui -y
sudo pip install watchdog
sudo pip install python-nmap
sudo pip install requests
sudo pip install filterpy
sudo pip install imutils

sudo chmod +x counting-sort.py
sudo chmod +x counting-nosort.py
sudo chmod +x launch_counting.sh
sudo chmod +x send_counts.py
sudo chmod +x send_counts.sh

cd ~/
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.2.0.zip
upzip opencv.zip
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4
sudo make install
sudo ldconfig
echo "All set-up! Enjoy your PeopleCounter!"
