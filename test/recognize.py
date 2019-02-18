import requests
import json

def recognize(audio):
    API_ENDPOINT = 'https://api.wit.ai/speech'
    ACCESS_TOKEN = 'NY6UBSMWOHNQ4NMXGCITBWBBCYZQV5AI'

    # defining headers for HTTP request
    headers = {'authorization': 'Bearer ' + ACCESS_TOKEN, 'Content-Type': 'audio/wav'}

    #Send the request as post request and the audio as data
    resp = requests.post(API_ENDPOINT, headers = headers, data = audio)

    #Get the text
    data = json.loads(resp.content)
    print(data["_text"])
