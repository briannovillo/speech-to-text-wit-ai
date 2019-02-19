import os

def read_and_delete_first_audio():
    for root, dirs, files in os.walk("./sounds"):
        if(files):
            file="./sounds/"+files[-1]
            with open(file, 'rb') as f:
                audio = f.read()
                os.remove(file)
            return audio
