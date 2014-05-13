#!/usr/bin/env python
import sys
import json
import random

data = {
	"output":400,
	"world":{}
}

for i in range(10):
	data["world"]["blob_%d" % i]={
		"type":"sphere",
		"center":[0.2+random.random()*0.6,0.2+random.random()*0.6,0.2+random.random()*0.6],
		"radius":random.random()*0.2,
		"color":[0,255,0]
	}

print(json.dumps(data))