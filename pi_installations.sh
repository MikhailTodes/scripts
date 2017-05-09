#!/bin/bash

#Basic updates and upgrades with automatic 'yes' response for installation
sudo apt-get update
yes Y | sudo apt-get upgrade
yes Y | sudo rpi-update

#Add the auto complete ignore case line to the bashrc and the l alias
echo "alias ll='ls -alF'" >> ~/.bashrc
echo "alias la='ls -A'" >> ~/.bashrc
echo "alias l='ls -CF'" >> ~/.bashrc

echo "bind 'set completion-ignore-case on'" >> ~/.bashrc

#Emacs
yes Y | sudo apt-get install Emacs

#Python2.7, Python3 (Likely already there but just incase)
yes Y | sudo apt-get install python2.7 python3

#Pip, Pip3 (Likely already there but just incase)
yes Y | sudo apt-get install python-pip python3-pip

#Developer Tools
yes Y | sudo apt-get install build-essential cmake pkg-config

#Image Processors
yes Y | sudo apt-get install libjpeg-dev
yes Y | sudo apt-get install libtiff5-dev libjasper-dev libpng12-dev

#Video Processors
yes Y | sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

#Gui Stuff and other packages used in OpenCV
yes Y | sudo apt-get install libgtk2.0-dev libatlas-base-dev gfortran

#Download and install precompiled OpenCV
wget "https://github.com/MikhailTodes/OpenCV-for-Pi/raw/master/latest-OpenCV.deb"
sudo dpkg -i latest-OpenCV.deb

#Reboot after installations are complete
sudo reboot
