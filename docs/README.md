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

Building One
============
You can order all the parts you need to build a TritiLED from this list. You need one of everything.

* PCB. [Order from OSH Park](https://www.oshpark.com/shared_projects/JiXnQwL2) $6.15 for 3.
* PIC12LF1571 8-SOIC [DigiKey part # PIC12LF1571-I/SN-ND](https://www.digikey.com/products/en?keywords=PIC12LF1571-I%2FSN-ND) $0.57 each
* Wurth 744062102 1mH inductor [DigiKey part # 732-3676-1-ND](https://www.digikey.com/product-detail/en/wurth-electronics-inc/744062102/732-3676-1-ND/2931732) $1.57 each
* 10uF 25V 1206 X7R MLCC capacitor [DigiKey part # 1276-1804-1-ND](https://www.digikey.com/products/en?keywords=1276-1804-1-ND) $0.26 each
* 0.1uF 25V 0805 X7R MLCC capacitor [DigiKey part #311-1141-1-ND](https://www.digikey.com/products/en?keywords=%20311-1141-1-ND) $0.10 each
* 100 ohm 1206 resistor [DigiKey part # 311-100FRCT-ND](https://www.digikey.com/products/en?keywords=311-100FRCT-ND) $0.10 each
* ZXMN3B01FTA N-channel SOT23 MOSFET [DigiKey part # ZXMN3B01FCT-ND](https://www.digikey.com/products/en?keywords=ZXMN3B01FCT-ND) $0.60 each
* DMG2305UX P-channel SOT23 MOSFET [DigiKey part # DMG2305UX-13DICT-ND](https://www.digikey.com/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589) $0.44 each
* CR2032 Battery retainer [Digikey part # BK-912-G-TR](https://www.digikey.com/product-detail/en/mpd-memory-protection-devices/BK-912-G-TR/BK-912-G-CT-ND/5032044) $0.63 each
* Switch E-Switch #TL3305BF260QG [Digikey part # EG5354CT-ND](https://www.digikey.com/products/en?keywords=eg5354ct-nd) $0.21 each
* CHANZON 3W LED (cyan is best). Find them on [Amazon : $9.52/10](https://www.amazon.com/Chanzon-10pcs-Power-Floodlight-Spotlight/dp/B01DBZIH64/ref=sr_1_2?ie=UTF8&qid=1482702919&sr=8-2&keywords=cyan+led), [AliExpress : $7.90/10](https://www.aliexpress.com/store/product/High-Power-LED-Chip-3W-5W-10W-20W-30W-50W-100W-Cyan-COB-LED-Beads-Bulb/1913069_32630486294.html), or Ebay (various sellers/prices)



Design Files
============
The design files for the hardware and software are in the repo, including Eagle files and gerbers for the PCB:

![TritiLED V2.2 PCB](/docs/images/tritiled22_assembly_map.png)

and OpenSCAD and STL files for a 3D-printable case:

![TritiLED V2.2 Case](/docs/images/tritiled22_case_assembly.png)

More Info
=========

Much more infromation can be found on [this project's hackaday.io page](https://hackaday.io/project/11864-tritiled).  
See also this derivation which uses an ATtiny45 microcontroller: ![everled](https://github.com/hexagon5un/everled)
