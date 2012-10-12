#!/usr/bin/python
import sys

import re
old = 0
ec = 0
oldp = 0
ph = 0

print "memory_initialization_radix=2;\n\
memory_initialization_vector=\n\
"

low = 0
first = True

for line in sys.stdin:

    v = int(line)
    if v < 0:
        v = 2**32 - (v*(-1)    )

    print "{:032b}".format(v)


