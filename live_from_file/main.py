from recognize import recognize
from read import read_audio
from time import sleep

def RecognizeSpeech(AUDIO_FILENAME, num_seconds = 5):
    # sleep for n seconds instead record a file
    sleep(num_seconds)

    # reading audio
    audio = read_audio(AUDIO_FILENAME)

    # send to WIT.AI
    recognize(audio)

if __name__ == "__main__":
    while True:
        text =  RecognizeSpeech('record.wav', 10)
