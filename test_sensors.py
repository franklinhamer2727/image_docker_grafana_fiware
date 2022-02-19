import time
import requests
import json
import random

max_cycles = 200000
orion = 'http://localhost:1026/v2/entities/'
headers = {'Content-Type' : 'application/json', 'fiware-service' : 'sensores', 'fiware-servicepath' : '/'}
name_rpi = "urn:ngsi-ld:Product:001"

for cycles in range(max_cycles):
    print('Cycle', cycles)
    body = {'quantity' : {'value' : cycles}, 'size' : {'value': (cycles + random.randint(1,101))}}
    contents = requests.patch(orion+name_rpi+'/attrs', headers = headers, json = body)
    print(contents.status_code, contents.reason)
    print(contents.text)
    time.sleep(0.1)
