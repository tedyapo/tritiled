<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="yes"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="tritiled">
<packages>
<package name="CR2032_BAT-HLD-001-THM">
<smd name="GND" x="0" y="0" dx="17.78" dy="17.78" layer="1" roundness="100"/>
<circle x="0" y="0" radius="10.0076" width="0.254" layer="21"/>
<pad name="+V@1" x="-10.414" y="1.524" drill="1" diameter="2.1844" shape="octagon"/>
<pad name="+V@2" x="-10.414" y="-1.524" drill="1" diameter="2.1844" shape="octagon"/>
<pad name="+V@4" x="10.414" y="1.524" drill="1" diameter="2.1844" shape="octagon"/>
<pad name="+V@3" x="10.414" y="-1.524" drill="1" diameter="2.1844" shape="octagon"/>
<wire x1="-10.3632" y1="4.445" x2="-7.366" y2="7.1374" width="0.254" layer="21"/>
<wire x1="7.4168" y1="7.1374" x2="10.3378" y2="4.4704" width="0.254" layer="21"/>
<wire x1="10.3378" y1="4.4704" x2="10.3632" y2="-4.6736" width="0.254" layer="21"/>
<wire x1="10.3632" y1="-4.6736" x2="7.0104" y2="-7.7216" width="0.254" layer="21"/>
<wire x1="7.0104" y1="-7.7216" x2="6.6294" y2="-8.001" width="0.254" layer="21"/>
<wire x1="6.6294" y1="-8.001" x2="6.096" y2="-8.1534" width="0.254" layer="21"/>
<wire x1="6.096" y1="-8.1534" x2="5.5118" y2="-8.128" width="0.254" layer="21"/>
<wire x1="5.5118" y1="-8.128" x2="4.8768" y2="-7.8994" width="0.254" layer="21"/>
<wire x1="4.0132" y1="-7.493" x2="3.048" y2="-7.0866" width="0.254" layer="51"/>
<wire x1="3.048" y1="-7.0866" x2="1.651" y2="-6.7056" width="0.254" layer="51"/>
<wire x1="1.651" y1="-6.7056" x2="0.8128" y2="-6.5786" width="0.254" layer="51"/>
<wire x1="0.8128" y1="-6.5786" x2="-0.0254" y2="-6.5532" width="0.254" layer="51"/>
<wire x1="-0.0254" y1="-6.5532" x2="-0.7366" y2="-6.5786" width="0.254" layer="51"/>
<wire x1="-0.7366" y1="-6.5786" x2="-1.4224" y2="-6.6548" width="0.254" layer="51"/>
<wire x1="-1.4224" y1="-6.6548" x2="-2.3114" y2="-6.8326" width="0.254" layer="51"/>
<wire x1="-2.3114" y1="-6.8326" x2="-3.2258" y2="-7.1374" width="0.254" layer="51"/>
<wire x1="-3.2258" y1="-7.1374" x2="-3.9116" y2="-7.3914" width="0.254" layer="51"/>
<wire x1="-4.6736" y1="-7.7978" x2="-5.1562" y2="-8.0264" width="0.254" layer="21"/>
<wire x1="-5.1562" y1="-8.0264" x2="-5.715" y2="-8.1534" width="0.254" layer="21"/>
<wire x1="-5.715" y1="-8.1534" x2="-6.1468" y2="-8.128" width="0.254" layer="21"/>
<wire x1="-6.1468" y1="-8.128" x2="-6.6548" y2="-8.001" width="0.254" layer="21"/>
<wire x1="-6.6548" y1="-8.001" x2="-7.2644" y2="-7.5438" width="0.254" layer="21"/>
<wire x1="-7.2644" y1="-7.5438" x2="-7.7978" y2="-7.0612" width="0.254" layer="21"/>
<wire x1="-7.7978" y1="-7.0612" x2="-8.5344" y2="-6.3246" width="0.254" layer="21"/>
<wire x1="-8.5344" y1="-6.3246" x2="-9.271" y2="-5.6642" width="0.254" layer="21"/>
<wire x1="-9.271" y1="-5.6642" x2="-10.1346" y2="-4.9276" width="0.254" layer="21"/>
<wire x1="-10.1346" y1="-4.9276" x2="-10.3886" y2="-4.7752" width="0.254" layer="21"/>
<wire x1="-10.3886" y1="-4.7752" x2="-10.3632" y2="4.4704" width="0.254" layer="21"/>
<wire x1="-7.112" y1="-4.8514" x2="-3.8608" y2="-4.8514" width="0.254" layer="51"/>
<wire x1="-3.8608" y1="-4.8514" x2="-3.8608" y2="0.889" width="0.254" layer="51"/>
<wire x1="-3.8608" y1="0.889" x2="-7.1374" y2="0.889" width="0.254" layer="51"/>
<wire x1="-7.1374" y1="0.889" x2="-7.1374" y2="-4.8514" width="0.254" layer="51"/>
<wire x1="-7.1374" y1="-4.8514" x2="-7.1882" y2="-4.8514" width="0.254" layer="21"/>
<wire x1="3.9116" y1="-4.8514" x2="7.0866" y2="-4.8514" width="0.254" layer="51"/>
<wire x1="7.0866" y1="-4.8514" x2="7.0866" y2="0.8636" width="0.254" layer="51"/>
<wire x1="7.0866" y1="0.8636" x2="3.9116" y2="0.8636" width="0.254" layer="51"/>
<wire x1="3.9116" y1="0.8636" x2="3.9116" y2="-4.8514" width="0.254" layer="51"/>
<wire x1="-7.1882" y1="0.889" x2="-7.1882" y2="1.9304" width="0.254" layer="51"/>
<wire x1="-7.1882" y1="1.9304" x2="-5.4356" y2="3.683" width="0.254" layer="51" curve="-90"/>
<wire x1="-5.4356" y1="3.683" x2="-3.8862" y2="2.1336" width="0.254" layer="51" curve="-90"/>
<wire x1="-3.8862" y1="2.1336" x2="-3.8862" y2="0.8636" width="0.254" layer="51"/>
<wire x1="3.8862" y1="0.9144" x2="3.8862" y2="2.0066" width="0.254" layer="51"/>
<wire x1="3.8862" y1="2.0066" x2="5.5626" y2="3.683" width="0.254" layer="51" curve="-90"/>
<wire x1="5.5626" y1="3.683" x2="7.0866" y2="2.159" width="0.254" layer="51" curve="-90"/>
<wire x1="7.0866" y1="2.159" x2="7.0866" y2="0.889" width="0.254" layer="51"/>
<circle x="-5.4864" y="2.2606" radius="3.089728125" width="0.254" layer="51"/>
<circle x="5.4864" y="2.2606" radius="3.089728125" width="0.254" layer="51"/>
<wire x1="-7.366" y1="7.112" x2="-5.588" y2="7.112" width="0.254" layer="21"/>
<wire x1="7.366" y1="7.112" x2="5.588" y2="7.112" width="0.254" layer="21"/>
<wire x1="-5.588" y1="7.112" x2="5.588" y2="7.112" width="0.254" layer="51"/>
<wire x1="-3.937" y1="-7.4168" x2="-4.6228" y2="-7.7724" width="0.254" layer="51"/>
<wire x1="4.0386" y1="-7.5184" x2="4.8768" y2="-7.8994" width="0.254" layer="51"/>
</package>
<package name="HDR_1_PIN">
<pad name="P$1" x="0" y="0" drill="1" diameter="2.1844" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="CELL">
<pin name="0V" x="0" y="-7.62" visible="off" direction="pwr" rot="R90"/>
<pin name="+V" x="0" y="10.16" visible="off" direction="pwr" rot="R270"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<text x="7.62" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="0" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-1.27" y2="5.08" width="0.254" layer="94"/>
</symbol>
<symbol name="GND">
<pin name="GND" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-6.35" x2="1.905" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.254" layer="94"/>
<text x="2.54" y="-2.54" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="+V">
<pin name="+3.6V" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="1.27" y="5.08" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="HDR_1_PIN">
<pin name="P$1" x="-5.08" y="0" length="middle"/>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BAT-HLD-001-THM_CR2032">
<gates>
<gate name="G$1" symbol="CELL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CR2032_BAT-HLD-001-THM">
<connects>
<connect gate="G$1" pin="+V" pad="+V@1 +V@2 +V@3 +V@4"/>
<connect gate="G$1" pin="0V" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3.0V">
<gates>
<gate name="G$1" symbol="+V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HDR_1_PIN">
<gates>
<gate name="G$1" symbol="HDR_1_PIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDR_1_PIN">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="B1" library="tritiled" deviceset="BAT-HLD-001-THM_CR2032" device=""/>
<part name="U$3" library="tritiled" deviceset="GND" device=""/>
<part name="U$7" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$1" library="tritiled" deviceset="HDR_1_PIN" device=""/>
<part name="U$2" library="tritiled" deviceset="HDR_1_PIN" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="B1" gate="G$1" x="-193.04" y="33.02"/>
<instance part="U$3" gate="G$1" x="-193.04" y="20.32"/>
<instance part="U$7" gate="G$1" x="-193.04" y="53.34"/>
<instance part="U$1" gate="G$1" x="-205.74" y="48.26" rot="R180"/>
<instance part="U$2" gate="G$1" x="-205.74" y="22.86" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="+3.6V" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="+3.6V"/>
<pinref part="B1" gate="G$1" pin="+V"/>
<wire x1="-193.04" y1="53.34" x2="-193.04" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="P$1"/>
<wire x1="-193.04" y1="48.26" x2="-193.04" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="48.26" x2="-193.04" y2="48.26" width="0.1524" layer="91"/>
<junction x="-193.04" y="48.26"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="B1" gate="G$1" pin="0V"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="-193.04" y1="25.4" x2="-193.04" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="P$1"/>
<wire x1="-193.04" y1="22.86" x2="-193.04" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-200.66" y1="22.86" x2="-193.04" y2="22.86" width="0.1524" layer="91"/>
<junction x="-193.04" y="22.86"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,-193.04,25.4,U$2,0V,GND,,,"/>
<approved hash="104,1,-193.04,43.18,U$2,+V,N$9,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
