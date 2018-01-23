#!/usr/bin/env python

#
# calibrate.py: calibrate TritiLED V3.x brightness/current
#
# usage: 
#  1. download the calibrate.hex image to the board
#  2. record the current (in uA) used by the board for the three brightnesses
#     in a file called currents.dat, like this:
#     
#     10.3
#     19.4
#     37.7
#
#  3. run this script to generate the modes.h header file with the calibration
#     values
#  4. recompile the c-code to generate the runtime image
#  5. download the runtime image to the board
#

import numpy as np
import matplotlib.pyplot as plt

frequencies = np.array([100, 200, 400])
currents = np.loadtxt('currents.dat')*1e-6

p = np.polyfit(frequencies, currents, 1)
print p

Ah = 0.220
years = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
target_current = Ah / (years * 365.25 * 24)
frequency = (target_current - p[1])/p[0]
print np.round(frequency, 2)

P = np.poly1d(p)
xi = np.linspace(0, 1000, 10) 

plt.plot(frequencies, currents, 'ro')
plt.plot(xi, P(xi), 'b-')
plt.show()

header = open('modes.h', 'w')
header.write('#define N_MODES 10\n')
header.write('struct run_time period_table[N_MODES] = {\n')
for idx in range(0, 10):
  header.write('  {%d, (int)(31000./%f + 0.5)},\n' % (years[idx], frequency[idx]))
header.write('};\n')
header.close()



