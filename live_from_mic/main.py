from recognize import recognize
from record import record_audio
from read import read_audio

def RecognizeSpeech(AUDIO_FILENAME, num_seconds = 5):
    # record audio of specified length in specified audio file
    record_audio(num_seconds, AUDIO_FILENAME)

    # reading audio
    audio = read_audio(AUDIO_FILENAME)

    # send to WIT.AI
    recognize(audio)

if __name__ == "__main__":
    while True:
        text =  RecognizeSpeech('myspeech.wav', 5)
