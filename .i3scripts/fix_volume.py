#!/usr/bin/python

import sys

x = [line for line in sys.stdin.read().split('\n') if line != '' and '#' not in line]

x[0] = x[0][:-18]
x[1] = x[1][:-4]

x = '\n'.join(x)

print(x)
