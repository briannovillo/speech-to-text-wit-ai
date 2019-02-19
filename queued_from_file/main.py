from recognize import recognize
from file import read_file, delete_file
from time import sleep
import sys

def RecognizeSpeechAndRemoveFile(AUDIO_FILENAME):
    print("Recognize and remove file", AUDIO_FILENAME)

    # reading audio
    audio = read_file(AUDIO_FILENAME)

    delete_file(AUDIO_FILENAME)

    # send to WIT.AI
    recognize(audio)

if __name__ == "__main__":
    text =  RecognizeSpeechAndRemoveFile(sys.argv[1])
