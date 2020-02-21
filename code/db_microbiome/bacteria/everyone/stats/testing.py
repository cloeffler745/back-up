#!/usr/bin/env python

import re
import gzip 

print("here we go")

with gzip.open('poop.gz', 'rb') as f: 
	for line in f:
		print(line)


