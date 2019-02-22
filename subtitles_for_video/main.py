from recognize import recognize
from file import read_file, delete_file
from time import sleep
import sys
import time

def RecognizeSpeechAndRemoveFile(AUDIO_FILENAME):
    # reading audio
    audio = read_file(AUDIO_FILENAME)

    # delete useless file because is already in "audio" variable
    delete_file(AUDIO_FILENAME)

    # send to WIT.AI
    recognize(audio)

    time.sleep(3)

if __name__ == "__main__":
    RecognizeSpeechAndRemoveFile(sys.argv[1])
