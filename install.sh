#!/bin/sh

# Install python and pip

# Install sound libraries
sudo apt install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg libav-tools

# Install pip libraries
sudo pip install -r requirements.txt
