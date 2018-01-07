Overview
========
TritiLEDs are optimized LED glow markers designed to last for multiple years on a single lithium coin cell.  They can be used wherever you need to mark something in the dark - my first application was marking telescope tripod legs so I wouldn't trip over them.  The 3.0 release is now available.  This release is software-tunable to run from 1-10 years (and possibly up 20) on a CR2032 cell, and fits into inexpensive "5g" polystyrene cosmetic jars for weatherproofing:
![TritiLED V3.0](/docs/images/first_v3_in_jar.jpg "TritiLED V3.0")

The older V2.2 release can either run for more than 2.5 years on a CR2032 cell at a very visible brightness with selectable blinking modes, or can be programmed to run for more than 5 years at a lower intensity. Here's a picture of two V2.2 boards, one in a 3D-printed case: 

![TritiLEDs](/docs/images/tritiled22_photo.jpg "TritiLED V2.2")

Three different LEDs have been selected for V3.0: each requires a slightly different PCB and different value for R3.

Caution
=======
Any project using lithium coin cells can be **extremely dangerous** to children or pets.  The [Energizer CR2032 datasheet](http://data.energizer.com/pdfs/cr2032.pdf) states that **an ingested cell can cause serious injury or death in as little as 2 hours**.  If you build any devices like the one described here, you must ensure that the battery can not be accessed by children or pets.  The recommended method is to use screws to secure the battery compartment, which means the board must be enclosed in a case.  The 3D printed case described below may not provide adequate protection from the battery: you use this design at your own risk.  Be careful out there, people :-)

How it Works
============
LEDs are typically not very efficient when driven with just a few uA of current.  To create an efficient low-brightness LED glow marker, you need to drive the LED with short pulses of higher current where it is most efficient.  Interestingly, driving with too much current also reduces efficiency: this phenomenon is known as "droop."  Since manufacturer's datasheets don't specify the optimal current, I created a [system to measure LED efficiency vs current](https://hackaday.io/project/12874-automated-ledlaser-diode-analysis-and-modeling). It turns out that you can sometimes boost efficiency by a factor of 2x or more by driving LEDs at less than their rated current, which is often based on thermal dissipation concerns rather than efficiency.  Here's an example of the efficiency of a cyan LED used in the V2.2 design:

![Efficiency Curve](/docs/images/chanzon_3W_efficiencycyan.png "Efficiency Curve")

You can see that this LED is most efficient at around 20 mA, even though it is rated for 350 mA.  But, driving the LED at 20mA continuously would only last around 10 hours with a CR2032: not very good.  So, instead, the circuit drives the LED with brief pulses near the optimum 20 mA.  The pulses are at a high enough frequency that the LED appears to glow steadily, but of short enough duration so that the average current drain is less than 10uA (and less than 5uA in some cases).  This allows the markers to run for years on a single cell. Incidentally, the choice of LED color is also very important.  Cyan LEDs are close to the dark-adapted sensitivity peak of the human eye at 507nm, so they can appear much brighter than other colors in the dark.  Green LEDs are close to the light-adapted peak, so they are more useful in brighter environments.

Here's a schematic of the OSLON Signal Verde LED flavor of V3.0:

![Tritiled V3.0 Schematic](/docs/images/tritiled30_schematic.png)

The V3.0 circuit uses a 74LVC1G123 monostable to produce short, accurate pulses for ramping up current through the inductor.  The inductor size and monostable pulse width are selected to optimize the drive current to the LED, based on measured LED efficiency vs current.  A PIC12LF1571 uses two synchronized PWM outputs to control the pulses.  One PWM gates power to the monostable (it consumes too much quiescent power), while the second PWM triggers the pulse.  The 16-bit PWMs on the PIC allow very fine tuning of pulse frequency and hence battery lifetime vs LED brightness.  Combined with inductor and monostable resistor selection, the circuit lets you tune for very good electrical and LED efficiency while allowing accurately tunable runtime.

Note: a different value of R3 is required for each type of LED.

V2.2
----

The schematic of the V2.2 is shown below.  A PIC microprocessor generates the pulses controlling a simple voltage converter consisting of a MOSFET and inductor which drives the LED:

![Tritiled V2.2 Schematic](/docs/images/tritiled22_schematic.png)

Building One
============

V3.0
----

You can order all the parts you need to build a TritiLED from this list. You need one of the following for any LED version:


* PIC12LF1571 8-SOIC [DigiKey part # PIC12LF1571-I/SN-ND](https://www.digikey.com/products/en?keywords=PIC12LF1571-I%2FSN-ND) $0.57 each
* 74LVC1G123 monostable SM8. [DigiKey part # 296-18758-1-ND](https://www.digikey.com/product-detail/en/texas-instruments/SN74LVC1G123DCTR/296-18758-1-ND/863888) $0.70 each
* 10uF 25V 1206 X7R MLCC capacitor [DigiKey part # 1276-1804-1-ND](https://www.digikey.com/products/en?keywords=1276-1804-1-ND) $0.26 each
* 1uF 25V 0805 X7R MLCC capacitor. [DigiKey part # 1276-6469-1-ND](https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL21B105KAFNNNG/1276-6469-1-ND/5958097) $0.10 each
* 100 ohm 1206 resistor [DigiKey part # 311-100FRCT-ND](https://www.digikey.com/products/en?keywords=311-100FRCT-ND) $0.10 each
* IRLML6244 N-channel SOT23 MOSFET. [DigiKey part # IRLML6244TRPBFCT-ND](https://www.digikey.com/product-detail/en/infineon-technologies/IRLML6244TRPBF/IRLML6244TRPBFCT-ND/2393877)  $0.54 each
* DMG2305UX P-channel SOT23 MOSFET [DigiKey part # DMG2305UX-13DICT-ND](https://www.digikey.com/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589) $0.44 each
* 100pf C0G 0603 capacitor. [DigiKey part # 311-3599-1-ND](https://www.digikey.com/scripts/DkSearch/dksus.dll?Detail&itemSeq=247682283&uq=636505677158910770) $0.11 each
* CR2032 Battery retainer. [Digikey part # BAT-HLD-001-THM-ND](https://www.digikey.com/product-detail/en/linx-technologies-inc/BAT-HLD-001-THM/BAT-HLD-001-THM-ND/3044009)  $0.28 each
* CR2032 cell.  [DigiKey part # P189-ND](https://www.digikey.com/product-detail/en/panasonic-bsg/CR2032/P189-ND/31939) $0.29 each
* "5g" polystyrene jar. [Buy from Amazon $7.99/50](https://www.amazon.com/GOGOONLY-Quality-Cosmetic-Containers-Lids-BH000507/dp/B012AO3DB6/ref=sr_1_3_a_it?ie=UTF8&qid=1514992581&sr=8-3&keywords=5g+jar), ebay or elsewhere


depending on the LED, you need a different PCB and resistor for R3:

__OSLON Signal Verde (505nm)__

* PCB. [Order from OSH Park](https://www.oshpark.com/shared_projects/uNMTIpQM) $4.10 for 3.
* OSLON Signal Verde (505nm) LED. [DigiKey part # 475-3450-1-ND](https://www.digikey.com/product-detail/en/osram-opto-semiconductors-inc/LV-CQBP-JZLX-BD-1-350-R18-Z/475-3450-1-ND/7908073) $3.49 each
* 51k 0603 1% resistor. [DigiKey part # 311-51.0KHRCT-ND](https://www.digikey.com/product-detail/en/yageo/RC0603FR-0751KL/311-51.0KHRCT-ND/730229) $0.10 each
* Bourns SRR6028-102Y 1mH inductor [DigiKey part # SRR6028-102YCT-ND](https://www.digikey.com/product-detail/en/bourns-inc/SRR6028-102Y/SRR6028-102YCT-ND/3767895) $0.74 each

__Cree XPE2 Green (525nm)__

* PCB. [Order from OSH Park](https://oshpark.com/shared_projects/v64xww6u) $4.10 for 3.
* Cree XPE2 Green (525nm) LED. [DigiKey part #XPEBGR-L1-0000-00F02CT-ND.](https://www.digikey.com/scripts/DkSearch/dksus.dll?Detail&itemSeq=247960818&uq=636505897321211412) $1.86 each
* 59k 0603 1% resistor. [DigiKey part # 311-59.0KHRCT-ND](https://www.digikey.com/scripts/DkSearch/dksus.dll?Detail&itemSeq=247682231&uq=636506497578975957) $0.10 each
* Bourns SRR6028-102Y 1mH inductor [DigiKey part # SRR6028-102YCT-ND](https://www.digikey.com/product-detail/en/bourns-inc/SRR6028-102Y/SRR6028-102YCT-ND/3767895) $0.74 each

__Luxeon C Cyan__

* PCB. [Order from OSH Park](https://oshpark.com/shared_projects/dgD2cxJ8) $4.10 for 3.
* Luxeon C Cyan LED. [DigiKey part # 1416-1917-1-ND.](https://www.digikey.com/scripts/DkSearch/dksus.dll?Detail&itemSeq=247960939&uq=636506525307128495) $2.74 each.
* 75k 0603 1% resistor. [DigiKey part # 311-75.0KHRCT-ND](https://www.digikey.com/products/en/resistors/chip-resistor-surface-mount/52?k=&pkeyword=&pv7=2&FV=ffe8176d%2Cffe00034%2Cc0001%2Cmu75+kOhms%7C2085&mnonly=0&ColumnSort=0&page=1&quantity=0&ptm=0&fid=0&pageSize=25) $0.10 each
* Bourns SRR6028-102Y 1mH inductor [DigiKey part # SRR6028-102YCT-ND](https://www.digikey.com/product-detail/en/bourns-inc/SRR6028-102Y/SRR6028-102YCT-ND/3767895) $0.74 each


V2.2
----

You can order all the parts you need to build a TritiLED from this list. You need one of everything.

* PCB. [Order from OSH Park](https://www.oshpark.com/shared_projects/JiXnQwL2) $6.15 for 3.
* PIC12LF1571 8-SOIC [DigiKey part # PIC12LF1571-I/SN-ND](https://www.digikey.com/products/en?keywords=PIC12LF1571-I%2FSN-ND) $0.57 each
* 10uF 25V 1206 X7R MLCC capacitor [DigiKey part # 1276-1804-1-ND](https://www.digikey.com/products/en?keywords=1276-1804-1-ND) $0.26 each
* 0.1uF 25V 0805 X7R MLCC capacitor [DigiKey part #311-1141-1-ND](https://www.digikey.com/products/en?keywords=%20311-1141-1-ND) $0.10 each
* 100 ohm 1206 resistor [DigiKey part # 311-100FRCT-ND](https://www.digikey.com/products/en?keywords=311-100FRCT-ND) $0.10 each
* ZXMN3B01FTA N-channel SOT23 MOSFET [DigiKey part # ZXMN3B01FCT-ND](https://www.digikey.com/products/en?keywords=ZXMN3B01FCT-ND) $0.60 each
* DMG2305UX P-channel SOT23 MOSFET [DigiKey part # DMG2305UX-13DICT-ND](https://www.digikey.com/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589) $0.44 each

* Switch E-Switch #TL3305BF260QG [Digikey part # EG5354CT-ND](https://www.digikey.com/products/en?keywords=eg5354ct-nd) $0.21 each
* CHANZON 3W LED (cyan is best). Find them on [Amazon : $9.52/10](https://www.amazon.com/Chanzon-10pcs-Power-Floodlight-Spotlight/dp/B01DBZIH64/ref=sr_1_2?ie=UTF8&qid=1482702919&sr=8-2&keywords=cyan+led), [AliExpress : $7.90/10](https://www.aliexpress.com/store/product/High-Power-LED-Chip-3W-5W-10W-20W-30W-50W-100W-Cyan-COB-LED-Beads-Bulb/1913069_32630486294.html), or Ebay (various sellers/prices)

Choose ONE battery holder:
* CR2032 Battery retainer [Digikey part # BK-912-G-TR](https://www.digikey.com/product-detail/en/mpd-memory-protection-devices/BK-912-G-TR/BK-912-G-CT-ND/5032044) $0.63 each

*OR*

* Linx BAT-HLD-001-TR CR2032 battery holder. [DigKey part # BAT-HLD-001-TRCT-ND](https://www.digikey.com/product-detail/en/linx-technologies-inc./bat-hld-001-tr/bat-hld-001-trct-nd/5803803) $0.73 each.

Choose ONE inductor:

* Wurth 744062102 1mH inductor [DigiKey part # 732-3676-1-ND](https://www.digikey.com/product-detail/en/wurth-electronics-inc/744062102/732-3676-1-ND/2931732) $1.57 each

*OR*

* Bourns SRR6028-102Y 1mH inductor [Mouser part # 652-SRR6028-102Y](http://www.mouser.com/ProductDetail/Bourns/SRR6028-102Y/?qs=%2fha2pyFaduiqTRitWcfc%2fBRjysclL8p%2fmvyGER5hqKox8ZVeTgAj2Q%3d%3d) $0.68 each


Design Files
============
The design files for the hardware and software are in the repo, including Eagle files and gerbers for the PCBs:

Version 3.0
-----------

![TritiLED V3.0 PCB](/docs/images/tritiled30_assembly_map.png)


Version 2.2
-----------

![TritiLED V2.2 PCB](/docs/images/tritiled22_assembly_map.png)

and OpenSCAD and STL files for a 3D-printable case:

![TritiLED V2.2 Case](/docs/images/tritiled22_case_assembly.png)

More Info
=========

Much more infromation can be found on [this project's hackaday.io page](https://hackaday.io/project/11864-tritiled).  
See also this derivation which uses an ATtiny45 microcontroller: [everled](https://github.com/hexagon5un/everled)
