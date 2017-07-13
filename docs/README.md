Overview
========
TritiLEDs are optimized LED glow markers designed to last for multiple years on a single lithium coin cell.  They can be used whereever you need to mark something in the dark - my first application was marking telescope tripod legs so I wouldn't trip over them.  The V2.2 release can either run for more than 2.5 years on a CR2032 cell at a very visible brightness with selectable blinking modes, or can be programmed to run for more than 5 years at a lower intensity. Here's a picture of two V2.2 boards, one in a 3D-printed case: 

![TritiLEDs](/docs/images/tritiled22_photo.jpg "Tritiled V2.2")

Caution
=======
Any project using lithium coin cells can be **extremely dangerous** to children or pets.  The [Energizer CR2032 datasheet](http://data.energizer.com/pdfs/cr2032.pdf) states that **an ingested cell can cuase serious injury or death in as little as 2 hours**.  If you build any devices like the one described here, you must ensure that the battery can not be accessed by children or pets.  The recommended method is to use screws to secure the battery compartment, which means the board must be enclosed in a case.  The 3D printed case described below may not provide adequate protection from the battery: you use this design at your own risk.  Be careful out there, people :-)

How it Works
============
LEDs are typically not very efficient when driven with just a few uA of current.  To create an efficient low-brightness LED glow marker, you need to drive the LED with short pulses of higher current where it it most efficient.  Interestingly, driving with too much current also reduces efficiency: this phenomenon is known as "droop."  Since manufacturer's datasheets don't specify the optimal current, I created a [system to measure LED efficiency vs current](https://hackaday.io/project/12874-automated-ledlaser-diode-analysis-and-modeling). It turns out that you can sometimes boost efficiency by a factor of 2x or more by driving LEDs at less than their rated current, which is often based on thermal dissipation concerns rather than efficiency.  Here's an example of the efficiency of a cyan LED used in the V2.2 design:

![Efficiency Curve](/docs/images/chanzon_3W_efficiencycyan.png "Efficiency Curve")

You can see that this LED is most efficient at around 20 mA, even though it is rated for 350 mA.  But, driving the LED at 20mA continuously would only last around 10 hours with a CR2032: not very good.  So, instead, the circuit drives the LED with brief pulses near the optimum 20 mA.  The pulses are ar a high enough frequency that the LED appears to glow steadily, but of short enough duration so that the average current drain is less than 10uA (and less than 5uA in some cases).  This allows the markers to run for years on a single cell. Incidentally, the choice of LED color is also very important.  Cyan LEDs are close to the dark-adapted sensitivity peak of the human eye at 507nm, so they can appear much brighter than other colors in the dark.  Green LEDs are close to the light-adapted peak, so they are more useful in brighter environments.  

The schematic of the V2.2 is shown below.  A PIC microprocessor generates the pulses controlling a simple voltage converter consisting of a MOSFET and inductor which drives the LED:

![Tritiled V2.2 Schematic](/docs/images/tritiled22_schematic.png)

Design Files
============
The design files for the hardware and software are in the repo, including Eagle files and gerbers for the PCB:

![TritiLED V2.2 PCB](/docs/images/tritiled22_assembly_map.png)

and OpenSCAD and STL files for a 3D-printable case:

![TritiLED V2.2 Case](/docs/images/tritiled22_case_assembly.png)

More Info
=========

Much more infromation can be found on [this project's hackaday.io page](https://hackaday.io/project/11864-tritiled).
