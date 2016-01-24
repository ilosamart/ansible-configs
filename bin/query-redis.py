#!/bin/python2

import redis
import json
import sys

def main(host):
	r = redis.StrictRedis(host='localhost', port=6379, db=0)
	key = "ansible_facts" + host
	val = r.get(key)
	
	data = json.loads(val)
	print data

if __name__ == "__main__":
	if len(sys.argv) == 2:
		main(sys.argv[1])
	else:
		print "Please inform the hostname to search for"
