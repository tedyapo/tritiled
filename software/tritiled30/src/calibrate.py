#!/usr/bin/env python3

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
#helper function
def inverse_poly1d(poly1d_param, y):
   return (y-poly1d_param[1])/poly1d_param[0]
   
import numpy as np
import matplotlib.pyplot as plt

frequencies = np.array([100, 200, 400])
currents = np.loadtxt('currents.dat')*1e-6

# fit polynomial to data
p = np.polyfit(frequencies, currents, 1)
print("currents")
print(currents)
print("polyfit")
print(p)

Ah = 0.220 # power in CR2032
years = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
target_current = Ah / (years * 365.25 * 24)
# frequency at target current
frequency = inverse_poly1d(p,target_current)
print("frequencies")
print(np.round(frequency, 2))

P = np.poly1d(p)
xi = np.linspace(0, 1000, 100)
plotYears = np.array(Ah / (P(xi) * 365.25 * 24))

boolAr = np.where(plotYears>0)
plotYearsTrunc = plotYears[boolAr]
xiTrunc = xi[boolAr]


figure, axis = plt.subplots(1, 2,layout='constrained')
# plot current over frequency with datapoints and interpolation
axis[0].plot(frequencies, currents*1e6, 'ro', label="calibration points")
axis[0].plot(xi, P(xi)*1e6, 'b-', label="linear interpolation")
axis[0].set_ylabel("current [uA]")
axis[0].set_xlabel("frequency [Hz]")
axis[0].legend()

# plot life expectancy over frequency
current_50Hz = P(50)
years_50Hz = Ah / (current_50Hz * 365.25 * 24)
axis[1].plot(frequencies, Ah / (P(frequencies) * 365.25 * 24), 'ro', label="calibration points")
axis[1].plot(xiTrunc, plotYearsTrunc, 'b-', label="linear interpolation")
axis[1].plot(50, years_50Hz, 'gx')
annot = "  "+'{:.2f}'.format(years_50Hz)+" years at 50 Hz"
axis[1].annotate(annot,(50,years_50Hz))
axis[1].set_ylabel("years [a]")
axis[1].set_xlabel("frequency [Hz]")
ylim = axis[1].get_ylim()
xlim = axis[1].get_xlim()
axis[1].hlines(years_50Hz,xlim[0],50)
axis[1].vlines(50,ylim[0],years_50Hz)
axis[1].set_ylim(ylim)
axis[1].set_xlim(xlim)
axis[1].legend()


plt.show()

header = open('modes.h', 'w')
header.write('#define N_MODES 10\n')
header.write('struct run_time period_table[N_MODES] = {\n')
for idx in range(0,len(years)):#range(0, 10):
  header.write('  {%d, (int)(31000./%f + 0.5)},\n' % (years[idx], frequency[idx]))
header.write('};\n')
header.close()
