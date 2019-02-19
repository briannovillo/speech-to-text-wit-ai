from recognize import recognize
from read import read_and_delete_first_audio
from time import sleep

def RecognizeSpeechEverySeconds(num_seconds = 10):
    # sleep for n seconds instead record a file
    sleep(num_seconds)

    # reading audio
    audio = read_and_delete_first_audio()

    # send to WIT.AI
    if(audio):
        recognize(audio)

if __name__ == "__main__":
    while True:
        text =  RecognizeSpeechEverySeconds(10)
