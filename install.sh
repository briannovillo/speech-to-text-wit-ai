#!/bin/sh

# Get all apt repos
apt update

# Install python and pip
apt install python3-pip -y
pip3 install --upgrade pip3

# Install sound libraries
apt install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg libav-tools -y

# Install inotify-tools for watching folders
apt install inotify-tools -y

# Install pip libraries
pip install -r requirements.txt
