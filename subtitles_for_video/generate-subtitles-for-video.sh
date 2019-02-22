#!/bin/sh

# Split video every 10 seconds, extract audio and save it into ./sounds folder

VIDEO_SECONDS=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $1)
VIDEO_SECONDS=$(python -c "print(int(round(${VIDEO_SECONDS})))")

i=0
j=0
end=${VIDEO_SECONDS}
while [ $i -le $end ]; do
    ffmpeg -i $1 -ss $i -t 00:00:10 -async 1 -strict -2 ./sounds/${i}.wav #Split 10 seconds of video, starting from index i
    echo $j >> videoplayback.srt #print subtitle index
    python3 time.py $(($i)) $(($i+10)) >> videoplayback.srt #print time start and end with format: 00:00:00 --> 00:00:10
    python3 main.py ./sounds/${i}.wav >> videoplayback.srt #print extracted text for audio on current 10 seconds
    echo "" >> videoplayback.srt #print empty line
    i=$(($i+10)) #Increment seconds index by 10
    j=$(($j+1)) #Increment line index by 1
done
