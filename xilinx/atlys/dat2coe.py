#!/usr/bin/python
import sys

import re
old = 0
ec = 0
oldp = 0
ph = 0

if len(sys.argv) == 3:
    if sys.argv[2] == "coe":
        print "memory_initialization_radix=2;\nmemory_initialization_vector="

low = 0
first = True

i = 0

for line in sys.stdin:
    i = i +1
    v = int(line)

    if v < 0:
        v = 2**32 - (v*(-1)    )
    
    if sys.argv[1] == "32":
        print "{:032b}".format(v)
    elif sys.argv[1] == "16":
        h = v & 0xffff0000
        h = h >> 16
        l = v & 0x0000ffff
        print "{:016b}".format(h)
        print "{:016b}".format(l)
    else:
        print "Error"
        sys.exit(1)

#    if i < 256:
#        print ","

