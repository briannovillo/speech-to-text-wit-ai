#!/bin/sh

# Split video every 10 seconds, extract audio and save it into ./sounds folder

VIDEO_SECONDS=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $1)
VIDEO_SECONDS=$(python -c "print(int(round(${VIDEO_SECONDS})))")

i=0
j=0
end=${VIDEO_SECONDS}
while [ $i -le $end ]; do
    ffmpeg -i $1 -ss $i -t 00:00:10 -async 1 -strict -2 ./sounds/${i}.wav
    echo $j >> videoplayback.srt
    python -c "import time; print time.strftime('%H:%M:%S', time.gmtime(${i-10}))+' --> '+time.strftime('%H:%M:%S', time.gmtime($(($i+10))))" >> videoplayback.srt
    python3 main.py ./sounds/${i}.wav >> videoplayback.srt
    echo "" >> videoplayback.srt
    i=$(($i+10))
    j=$(($j+1))
done
