import urllib.request
import json
import datetime
import random
import string
import time
import os
import sys
script_version = '4.0.0'
window_title   = f"WARP-PLUS-CLOUDFLARE mod by Banana (version {script_version})"
os.system('title ' + window_title if os.name == 'nt' else 'PS1="\[\e]0;' + window_title + '\a\]"; echo $PS1')
os.system('cls' if os.name == 'nt' else 'clear')
#referrer  = input("[#] Enter the WARP+ ID:")
referrer ="e4a960a6-de6d-4fdb-ac91-3de482f476c7"
def noti():
	print("[!] Request completed...")
def genString(stringLength):
	try:
		letters = string.ascii_letters + string.digits
		return ''.join(random.choice(letters) for i in range(stringLength))
	except Exception as error:
		print(error)		    
def digitString(stringLength):
	try:
		digit = string.digits
		return ''.join((random.choice(digit) for i in range(stringLength)))    
	except Exception as error:
		print(error)	
url = f'https://api.cloudflareclient.com/v0a{digitString(3)}/reg'
def run():
	try:
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
	except Exception as error:
		print("")
		print(error)	
g = 0
b = 0
while True:
	result = run()
	if result == 200:
		os.system('cls' if os.name == 'nt' else 'clear')
		g += 1
		print(f"\n[-] WORK ON ID: {referrer}")    
		noti()
		print(f"[:)] {g} GB has been successfully added to your account.")
		print(f"[#] Total: {g} Good {b} Bad")
		time.sleep(1.5)
	else:
		os.system('cls' if os.name == 'nt' else 'clear')
		b += 1
		print("[:(] Error when connecting to server.")
		print(f"[#] Total: {g} Good {b} Bad")
		time.sleep(1.5)
