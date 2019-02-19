#!/bin/sh

# Get default speaker output
DEFAULT_SPEAKER=$(pactl list short sources | grep output | awk -F" " '{ print $2}')

# Record 10 seconds of speakers audio every time and save into file
while :
do
  echo "Recording speakers"
  #avconv -f pulse -i ${DEFAULT_SPEAKER} -t 10 record.wav -y
  ffmpeg -f pulse -i ${DEFAULT_SPEAKER} -t 10  record.wav -y
done
