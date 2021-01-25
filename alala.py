import urllib.request
import json
import datetime
import random
import string
import time
referrer ="e4a960a6-de6d-4fdb-ac91-3de482f476c7"
def genString(stringLength):
  letters = string.ascii_letters + string.digits
  return ''.join(random.choice(letters) for i in range(stringLength))
def digitString(stringLength):
  digit = string.digits
  return ''.join((random.choice(digit) for i in range(stringLength)))    
url = f'https://api.cloudflareclient.com/v0a{digitString(3)}/reg'
def run():
  time.sleep(0.5)
  install_id = genString(22)
  body = {"key": "{}=".format(genString(43)),
  "install_id": install_id,
  "fcm_token": "{}:APA91b{}".format(install_id, genString(134)),
  "referrer": referrer,
  "warp_enabled": False,
  "tos": datetime.datetime.now().isoformat()[:-3] + "+02:00",
  "type": "Android",
  "locale": "es_ES"}
  data = json.dumps(body).encode('utf8')
  headers = {'Content-Type': 'application/json; charset=UTF-8',
    'Host': 'api.cloudflareclient.com',
    'Connection': 'Keep-Alive',
    'Accept-Encoding': 'gzip',
    'User-Agent': 'okhttp/3.12.1'
    }
  req         = urllib.request.Request(url, data, headers)
  response    = urllib.request.urlopen(req)
  status_code = response.getcode()	
  return status_code
g = 0
b = 0
while True:
  result = run()
  if (result==200):
    g+=1
  else:
    b+=1
  print(g,b)
