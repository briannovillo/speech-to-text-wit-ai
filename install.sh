#!/bin/sh

# Get all apt-get repos
apt update

# Install python and pip
apt-get install python3-pip -y
pip3 install --upgrade pip

# Install sound libraries
apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg libav-tools -y

# Install inotify-tools for watching folders
apt-get install inotify-tools -y

# Install pip libraries
pip install -r requirements.txt
