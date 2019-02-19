## Speech to text app using facebook wit.ai library
### For more info see
- https://www.liip.ch/en/blog/speech-recognition-with-wit-ai
- https://wit.ai

### Getting started
- Install pip, python and pip libraries
```
sh install.sh
```
### You can run different modes on each folder:
- queued_from_file (*best mode*):

Record speaker audio every 10 seconds on a file with timestamp name inside ./sounds folder
```
sh record-from-speaker.sh
```
Send first file on ./sounds to WIT.AI every 10 seconds and remove file
```
python main.py
```

- live_from_file:
Record speaker audio every 10 seconds on record.wav file
```
sh record-from-speaker.sh
```
Send file to WIT.AI every 10 seconds
```
python main.py
```

- live_from_mic:
Record microphone every 10 seconds on record.wav file and send to WIT.AI
```
python main.py
```
