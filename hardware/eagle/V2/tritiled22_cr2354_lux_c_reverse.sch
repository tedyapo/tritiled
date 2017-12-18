<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="z0">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.27" x2="1.905" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.254" layer="94"/>
<pin name="GND" x="0" y="5.08" length="middle" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="-2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="tritiled">
<packages>
<package name="SRR6028_INDUCTOR">
<polygon width="0.127" layer="1">
<vertex x="-3.65" y="3.65"/>
<vertex x="3.65" y="3.65"/>
<vertex x="3.65" y="1.05"/>
<vertex x="2.5" y="1.05" curve="90"/>
<vertex x="0" y="2.7" curve="94.422201"/>
<vertex x="-2.5" y="1.05"/>
<vertex x="-3.65" y="1.05"/>
</polygon>
<wire x1="-2.68" y1="1.06" x2="2.66" y2="1.09" width="0.4064" layer="1" curve="-135.021028" cap="flat"/>
<polygon width="0.127" layer="1">
<vertex x="3.65" y="-3.65"/>
<vertex x="-3.65" y="-3.65"/>
<vertex x="-3.65" y="-1.05"/>
<vertex x="-2.5" y="-1.05" curve="90"/>
<vertex x="0" y="-2.7" curve="94.422201"/>
<vertex x="2.5" y="-1.05"/>
<vertex x="3.65" y="-1.05"/>
</polygon>
<wire x1="2.68" y1="-1.06" x2="-2.66" y2="-1.09" width="0.4064" layer="1" curve="-135.021028" cap="flat"/>
<smd name="P$1" x="-3" y="3" dx="1.27" dy="1.27" layer="1"/>
<smd name="P$2" x="-3" y="-3" dx="1.27" dy="1.27" layer="1"/>
<wire x1="-3" y1="0.6825" x2="-3" y2="-0.6825" width="0.127" layer="21"/>
<wire x1="3" y1="0.6825" x2="3" y2="-0.6825" width="0.127" layer="21"/>
<wire x1="-3.81" y1="3.81" x2="3.81" y2="3.81" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.81" x2="3.81" y2="-3.81" width="0.127" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="-3.81" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.127" layer="21"/>
<polygon width="0.127" layer="29">
<vertex x="-3.65" y="3.65"/>
<vertex x="3.65" y="3.65"/>
<vertex x="3.65" y="1.05"/>
<vertex x="2.5" y="1.05" curve="90"/>
<vertex x="0" y="2.7" curve="94.422201"/>
<vertex x="-2.5" y="1.05"/>
<vertex x="-3.65" y="1.05"/>
</polygon>
<wire x1="-2.68" y1="1.06" x2="2.66" y2="1.09" width="0.4064" layer="29" curve="-135.021028" cap="flat"/>
<polygon width="0.127" layer="29">
<vertex x="3.65" y="-3.65"/>
<vertex x="-3.65" y="-3.65"/>
<vertex x="-3.65" y="-1.05"/>
<vertex x="-2.5" y="-1.05" curve="90"/>
<vertex x="0" y="-2.7" curve="94.422201"/>
<vertex x="2.5" y="-1.05"/>
<vertex x="3.65" y="-1.05"/>
</polygon>
<wire x1="2.68" y1="-1.06" x2="-2.66" y2="-1.09" width="0.4064" layer="29" curve="-135.021028" cap="flat"/>
<polygon width="0.254" layer="41">
<vertex x="-3.81" y="0.9525"/>
<vertex x="-3.81" y="-0.9525"/>
<vertex x="-2.2225" y="-0.9525" curve="90"/>
<vertex x="-0.3175" y="-2.54"/>
<vertex x="0.3175" y="-2.54" curve="90"/>
<vertex x="2.2225" y="-0.9525"/>
<vertex x="3.81" y="-0.9525"/>
<vertex x="3.81" y="0.9525"/>
<vertex x="2.2225" y="0.9525" curve="90"/>
<vertex x="0.3175" y="2.54"/>
<vertex x="-0.3175" y="2.54" curve="90"/>
<vertex x="-2.2225" y="0.9525"/>
</polygon>
<text x="5.08" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="5.08" y="0" size="1.27" layer="27">&gt;VALUE</text>
<polygon width="0.3048" layer="31" spacing="0.6096">
<vertex x="-3.65" y="3.65"/>
<vertex x="3.65" y="3.65"/>
<vertex x="3.65" y="1.05"/>
<vertex x="2.5" y="1.05" curve="90"/>
<vertex x="0" y="2.7" curve="94.422201"/>
<vertex x="-2.5" y="1.05"/>
<vertex x="-3.65" y="1.05"/>
</polygon>
<wire x1="-2.68" y1="1.06" x2="2.66" y2="1.09" width="0.4064" layer="31" curve="-135.021028" cap="flat"/>
<polygon width="0.127" layer="31">
<vertex x="3.65" y="-3.65"/>
<vertex x="-3.65" y="-3.65"/>
<vertex x="-3.65" y="-1.05"/>
<vertex x="-2.5" y="-1.05" curve="90"/>
<vertex x="0" y="-2.7" curve="94.422201"/>
<vertex x="2.5" y="-1.05"/>
<vertex x="3.65" y="-1.05"/>
</polygon>
<wire x1="2.68" y1="-1.06" x2="-2.66" y2="-1.09" width="0.4064" layer="31" curve="-135.021028" cap="flat"/>
</package>
<package name="LUXEON_C">
<smd name="HS" x="0" y="0" dx="0.5" dy="1.7" layer="1"/>
<smd name="C" x="0.725" y="0" dx="0.25" dy="1.7" layer="1"/>
<smd name="A" x="-0.725" y="0" dx="0.25" dy="1.7" layer="1"/>
<wire x1="-1" y1="1" x2="0.425" y2="1" width="0.127" layer="21"/>
<wire x1="0.425" y1="1" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="1" y1="1" x2="1" y2="-1" width="0.127" layer="21"/>
<wire x1="1" y1="-1" x2="0.425" y2="-1" width="0.127" layer="21"/>
<wire x1="0.425" y1="-1" x2="-1" y2="-1" width="0.127" layer="21"/>
<wire x1="-1" y1="-1" x2="-1" y2="1" width="0.127" layer="21"/>
<wire x1="0.425" y1="1" x2="0.425" y2="-1" width="0.127" layer="21"/>
</package>
<package name="LED_3W">
<circle x="0" y="0" radius="4" width="0.127" layer="21"/>
<circle x="0" y="0" radius="3" width="0.127" layer="21"/>
<smd name="A" x="6.2" y="1.15" dx="2" dy="1.9" layer="1"/>
<smd name="C" x="-6.2" y="-1.15" dx="2" dy="1.9" layer="1"/>
<wire x1="-3.75" y1="1.5" x2="-4.75" y2="1.5" width="0.127" layer="21"/>
<wire x1="-4.75" y1="1.5" x2="-4.75" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-0.75" x2="-5" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-5" y1="-0.75" x2="-5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-5" y1="-1.5" x2="-3.75" y2="-1.5" width="0.127" layer="21"/>
<wire x1="3.75" y1="-1.5" x2="4.75" y2="-1.5" width="0.127" layer="21"/>
<wire x1="4.75" y1="-1.5" x2="4.75" y2="0.75" width="0.127" layer="21"/>
<wire x1="4.75" y1="0.75" x2="5" y2="0.75" width="0.127" layer="21"/>
<wire x1="5" y1="0.75" x2="5" y2="1.5" width="0.127" layer="21"/>
<wire x1="5" y1="1.5" x2="3.75" y2="1.5" width="0.127" layer="21"/>
<wire x1="-4.5" y1="1.25" x2="-4.5" y2="-0.25" width="0.127" layer="21"/>
<wire x1="-4.5" y1="-0.25" x2="-4.25" y2="-0.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="-0.25" x2="-4.25" y2="1.25" width="0.127" layer="21"/>
<wire x1="-4.25" y1="1.25" x2="-4.5" y2="1.25" width="0.127" layer="21"/>
<circle x="0" y="0" radius="3.25" width="0" layer="41"/>
<wire x1="0" y1="0.75" x2="0" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-0.75" y1="0" x2="0.75" y2="0" width="0.127" layer="21"/>
<text x="8.89" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="8.89" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SOT-23">
<smd name="1" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="2" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="3" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<wire x1="-0.7" y1="0.65" x2="-1.5" y2="0.65" width="0.127" layer="21"/>
<wire x1="-1.5" y1="0.65" x2="-1.5" y2="-0.25" width="0.127" layer="21"/>
<wire x1="0.7" y1="0.65" x2="1.5" y2="0.65" width="0.127" layer="21"/>
<wire x1="1.5" y1="0.65" x2="1.5" y2="-0.25" width="0.127" layer="21"/>
<wire x1="-0.3" y1="-0.65" x2="0.3" y2="-0.65" width="0.127" layer="21"/>
<wire x1="-0.3" y1="-0.65" x2="-1.5" y2="-0.65" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-0.65" x2="-1.5" y2="-0.25" width="0.127" layer="51"/>
<wire x1="0.3" y1="-0.65" x2="1.5" y2="-0.65" width="0.127" layer="51"/>
<wire x1="1.5" y1="-0.65" x2="1.5" y2="-0.3" width="0.127" layer="51"/>
<wire x1="0.7" y1="0.65" x2="-0.7" y2="0.65" width="0.127" layer="51"/>
<rectangle x1="-0.2" y1="0.7" x2="0.25" y2="1.25" layer="51"/>
<rectangle x1="-1.15" y1="-1.25" x2="-0.7" y2="-0.7" layer="51"/>
<rectangle x1="0.75" y1="-1.25" x2="1.2" y2="-0.7" layer="51"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1206">
<smd name="P$1" x="-1.55" y="0" dx="0.9" dy="1.6" layer="1"/>
<smd name="P$2" x="1.55" y="0" dx="0.9" dy="1.6" layer="1"/>
<wire x1="-2.225" y1="1.125" x2="2.225" y2="1.125" width="0.127" layer="21"/>
<wire x1="2.225" y1="1.125" x2="2.225" y2="-1.125" width="0.127" layer="21"/>
<wire x1="2.225" y1="-1.125" x2="-2.225" y2="-1.125" width="0.127" layer="21"/>
<wire x1="-2.225" y1="-1.125" x2="-2.225" y2="1.125" width="0.127" layer="21"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="0805">
<smd name="P$1" x="-0.95" y="0" dx="0.9" dy="1.3" layer="1"/>
<smd name="P$2" x="0.95" y="0" dx="0.9" dy="1.3" layer="1"/>
<wire x1="-1.5025" y1="0.925" x2="-1.5025" y2="-0.925" width="0.127" layer="21"/>
<wire x1="-1.5025" y1="-0.925" x2="1.5025" y2="-0.925" width="0.127" layer="21"/>
<wire x1="1.5025" y1="-0.925" x2="1.5025" y2="0.925" width="0.127" layer="21"/>
<wire x1="1.5025" y1="0.925" x2="-1.5025" y2="0.925" width="0.127" layer="21"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SOIC8">
<smd name="1" x="-1.905" y="-2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="2" x="-0.635" y="-2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="3" x="0.635" y="-2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="4" x="1.905" y="-2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="5" x="1.905" y="2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="6" x="0.635" y="2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="7" x="-0.635" y="2.7" dx="0.55" dy="1.5" layer="1"/>
<smd name="8" x="-1.905" y="2.7" dx="0.55" dy="1.5" layer="1"/>
<wire x1="-2.45" y1="1.8" x2="2.45" y2="1.8" width="0.127" layer="21"/>
<wire x1="2.45" y1="1.8" x2="2.45" y2="-1.8" width="0.127" layer="21"/>
<wire x1="2.45" y1="-1.8" x2="-2.45" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-2.45" y1="-1.8" x2="-2.45" y2="-0.62" width="0.127" layer="21"/>
<wire x1="-2.45" y1="-0.62" x2="-2.42" y2="-0.62" width="0.127" layer="21"/>
<wire x1="-2.42" y1="-0.62" x2="-1.88" y2="-0.08" width="0.127" layer="21" curve="90"/>
<wire x1="-1.88" y1="-0.08" x2="-1.88" y2="0" width="0.127" layer="21"/>
<wire x1="-1.88" y1="0" x2="-2.45" y2="0.54" width="0.127" layer="21" curve="90"/>
<wire x1="-2.45" y1="0.54" x2="-2.45" y2="1.8" width="0.127" layer="21"/>
<circle x="-2.8" y="-2.1" radius="0.2" width="0.127" layer="21"/>
<text x="3.81" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="3.81" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805">
<smd name="P$1" x="-0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<smd name="P$2" x="0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<wire x1="-1.6" y1="0.9" x2="1.6" y2="0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="0.9" x2="1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="-0.9" x2="-1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-0.9" x2="-1.6" y2="0.9" width="0.127" layer="21"/>
</package>
<package name="C0603">
<smd name="P$1" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="P$2" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<wire x1="-1.375" y1="0.7" x2="1.375" y2="0.7" width="0.127" layer="21"/>
<wire x1="1.375" y1="0.7" x2="1.375" y2="-0.7" width="0.127" layer="21"/>
<wire x1="1.375" y1="-0.7" x2="-1.375" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-1.375" y1="-0.7" x2="-1.375" y2="0.7" width="0.127" layer="21"/>
</package>
<package name="R1206">
<smd name="P$1" x="-1.55" y="0" dx="1.6" dy="1.9" layer="1"/>
<smd name="P$2" x="1.55" y="0" dx="1.6" dy="1.9" layer="1"/>
<wire x1="-2.6" y1="1.2" x2="2.6" y2="1.2" width="0.127" layer="21"/>
<wire x1="2.6" y1="1.2" x2="2.6" y2="-1.2" width="0.127" layer="21"/>
<wire x1="2.6" y1="-1.2" x2="-2.6" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-1.2" x2="-2.6" y2="1.16" width="0.127" layer="21"/>
<wire x1="-2.6" y1="1.2" x2="-2.6" y2="1.16" width="0.127" layer="21"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0603">
<smd name="P$1" x="-0.725" y="0" dx="0.95" dy="0.95" layer="1"/>
<smd name="P$2" x="0.725" y="0" dx="0.95" dy="0.95" layer="1"/>
<wire x1="-1.4" y1="0.7" x2="1.4" y2="0.7" width="0.127" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="-0.7" width="0.127" layer="21"/>
<wire x1="1.4" y1="-0.7" x2="-1.4" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-1.4" y1="-0.7" x2="-1.4" y2="0.7" width="0.127" layer="21"/>
</package>
<package name="LUXEON_Z">
<smd name="C" x="-0.475" y="0" dx="0.45" dy="1.5" layer="1" roundness="25" thermals="no"/>
<smd name="A" x="0.475" y="0" dx="0.45" dy="1.5" layer="1" roundness="25" thermals="no"/>
<wire x1="-0.65" y1="0.85" x2="0.65" y2="0.85" width="0.1" layer="51"/>
<wire x1="0.65" y1="0.85" x2="0.65" y2="-0.85" width="0.1" layer="51"/>
<wire x1="0.65" y1="-0.85" x2="-0.65" y2="-0.85" width="0.1" layer="51"/>
<wire x1="-0.65" y1="-0.85" x2="-0.65" y2="0.85" width="0.1" layer="51"/>
<wire x1="-1.129" y1="0.655" x2="-1.129" y2="-0.665" width="0.1" layer="21"/>
</package>
<package name="LED_5630">
<smd name="C@1" x="-1.05" y="0.7" dx="3.5" dy="0.8" layer="1"/>
<smd name="C@2" x="-1.05" y="-0.7" dx="3.5" dy="0.8" layer="1"/>
<smd name="A@1" x="2.05" y="0.7" dx="1.5" dy="0.8" layer="1"/>
<smd name="A@2" x="2.05" y="-0.7" dx="1.5" dy="0.8" layer="1"/>
<polygon width="0.1" layer="1">
<vertex x="-2.22" y="1.05"/>
<vertex x="0.66" y="1.05"/>
<vertex x="0.66" y="-1.05"/>
<vertex x="-2.22" y="-1.05"/>
</polygon>
<polygon width="0.127" layer="1">
<vertex x="1.36" y="1.04"/>
<vertex x="2.27" y="1.04"/>
<vertex x="2.27" y="-1.04"/>
<vertex x="1.36" y="-1.04"/>
</polygon>
<wire x1="-2.49" y1="1.48" x2="2.24" y2="1.48" width="0.0762" layer="21"/>
<wire x1="2.24" y1="1.48" x2="2.52" y2="1.2" width="0.0762" layer="21"/>
<wire x1="2.52" y1="-1.22" x2="2.25" y2="-1.49" width="0.0762" layer="21"/>
<wire x1="2.25" y1="-1.49" x2="-2.49" y2="-1.49" width="0.0762" layer="21"/>
<wire x1="-2.5" y1="1.48" x2="-2.5" y2="1.17" width="0.0762" layer="21"/>
<wire x1="-2.5" y1="-1.5" x2="-2.51" y2="-1.5" width="0.0762" layer="21"/>
<wire x1="-2.51" y1="-1.5" x2="-2.51" y2="-1.19" width="0.0762" layer="21"/>
<wire x1="-2.51" y1="0.17" x2="-2.51" y2="-0.16" width="0.0762" layer="21"/>
<wire x1="2.58" y1="0.19" x2="2.58" y2="-0.19" width="0.0762" layer="21"/>
<polygon width="0.1" layer="29">
<vertex x="-2.24" y="-1.05"/>
<vertex x="0.65" y="-1.05"/>
<vertex x="0.65" y="1.05"/>
<vertex x="-2.25" y="1.05"/>
</polygon>
<polygon width="0.1" layer="29">
<vertex x="1.35" y="1.05"/>
<vertex x="2.3" y="1.05"/>
<vertex x="2.3" y="-1.05"/>
<vertex x="1.35" y="-1.05"/>
</polygon>
<polygon width="0.1" layer="31">
<vertex x="-2.75" y="1.05"/>
<vertex x="0.65" y="1.05"/>
<vertex x="0.65" y="-1.05"/>
<vertex x="-2.75" y="-1.05"/>
<vertex x="-2.75" y="-0.35"/>
<vertex x="-2.25" y="-0.35"/>
<vertex x="-2.25" y="0.35"/>
<vertex x="-2.75" y="0.35"/>
</polygon>
<polygon width="0.1" layer="31">
<vertex x="1.35" y="1.05"/>
<vertex x="2.75" y="1.05"/>
<vertex x="2.75" y="0.35"/>
<vertex x="2.3" y="0.35"/>
<vertex x="2.3" y="-0.35"/>
<vertex x="2.75" y="-0.35"/>
<vertex x="2.75" y="-1.05"/>
<vertex x="1.35" y="-1.05"/>
</polygon>
</package>
<package name="CR2354_TABBED">
<circle x="0" y="0" radius="11.5" width="0.127" layer="21"/>
<pad name="GND" x="0" y="9" drill="2" diameter="3.81"/>
<pad name="+3V" x="0" y="-11.5" drill="3" diameter="5.08"/>
<text x="0.508" y="-3.81" size="1.27" layer="21" font="fixed" ratio="13" rot="R90">&gt;VALUE</text>
<wire x1="0" y1="6.858" x2="0" y2="5.588" width="0.127" layer="21"/>
<wire x1="0" y1="-8.89" x2="0" y2="-7.366" width="0.127" layer="21"/>
<wire x1="-0.762" y1="-8.128" x2="0.762" y2="-8.128" width="0.127" layer="21"/>
</package>
<package name="CREE_XPE_LED">
<circle x="-0.01" y="-0.01" radius="1.13" width="0.127" layer="51"/>
<wire x1="-1.65" y1="1.65" x2="1.65" y2="1.65" width="0.127" layer="51"/>
<wire x1="1.65" y1="1.65" x2="1.65" y2="-1.65" width="0.127" layer="51"/>
<wire x1="1.65" y1="-1.65" x2="-1.65" y2="-1.65" width="0.127" layer="51"/>
<wire x1="-1.65" y1="-1.65" x2="-1.65" y2="1.65" width="0.127" layer="51"/>
<smd name="A" x="-1.4" y="0" dx="0.5" dy="3.3" layer="1"/>
<smd name="C" x="1.4" y="0" dx="0.5" dy="3.3" layer="1"/>
<smd name="HS" x="0" y="0" dx="1.3" dy="3.3" layer="1"/>
<wire x1="-0.889" y1="1.651" x2="-0.889" y2="-1.651" width="0.127" layer="21"/>
</package>
<package name="OSLON_3030_LED">
<smd name="A" x="-1.125" y="0" dx="2.8" dy="0.55" layer="1" rot="R90"/>
<smd name="C" x="1.125" y="0" dx="2.8" dy="0.55" layer="1" rot="R90"/>
<smd name="HS" x="0" y="0" dx="2.8" dy="1" layer="1" rot="R90"/>
<wire x1="-1.5" y1="1.5" x2="0.7" y2="1.5" width="0.1" layer="21"/>
<wire x1="0.7" y1="1.5" x2="1.5" y2="1.5" width="0.1" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="-1.5" width="0.1" layer="21"/>
<wire x1="1.5" y1="-1.5" x2="0.7" y2="-1.5" width="0.1" layer="21"/>
<wire x1="0.7" y1="-1.5" x2="-1.5" y2="-1.5" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="1.5" width="0.1" layer="21"/>
<wire x1="0.7" y1="1.5" x2="0.7" y2="-1.5" width="0.1" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="L-US">
<wire x1="0" y1="5.08" x2="1.27" y2="3.81" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="3.81" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="90"/>
<text x="-1.27" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="3.81" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="2" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="1" x="0" y="7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
<symbol name="LED">
<pin name="A" x="0" y="7.62" visible="off" length="middle" rot="R270"/>
<pin name="C" x="0" y="-7.62" visible="off" length="middle" rot="R90"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.5875" x2="7.9375" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.9375" y1="-3.81" x2="6.0325" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.9375" y1="-3.81" x2="6.985" y2="-2.2225" width="0.254" layer="94"/>
<wire x1="3.81" y1="0.9525" x2="8.5725" y2="-1.27" width="0.254" layer="94"/>
<wire x1="8.5725" y1="-1.27" x2="6.6675" y2="-1.27" width="0.254" layer="94"/>
<wire x1="8.5725" y1="-1.27" x2="7.62" y2="0.3175" width="0.254" layer="94"/>
<text x="10.16" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="N_MOSFET">
<pin name="G" x="-7.62" y="-2.54" visible="off" length="middle"/>
<pin name="D" x="10.16" y="7.62" visible="off" length="middle" rot="R270"/>
<pin name="S" x="10.16" y="-7.62" visible="off" length="middle" rot="R90"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-1.27" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="7.62" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="-1.27" width="0.254" layer="94"/>
<text x="12.7" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="12.7" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="C">
<pin name="P$1" x="0" y="5.08" visible="off" length="point" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="off" length="point" rot="R90"/>
<wire x1="-3.81" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-1.27" width="0.254" layer="94"/>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="PIC12LF1571">
<pin name="VDD" x="0" y="17.78" length="middle" rot="R270"/>
<pin name="VSS" x="0" y="-17.78" length="middle" rot="R90"/>
<pin name="!MCLR!" x="-20.32" y="7.62" length="middle"/>
<pin name="ICSPDAT" x="-20.32" y="0" length="middle"/>
<pin name="ICSPCLK" x="-20.32" y="-7.62" length="middle"/>
<pin name="GP2" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="GP4" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="GP5" x="20.32" y="-7.62" length="middle" rot="R180"/>
<wire x1="-15.24" y1="12.7" x2="-15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-12.7" x2="15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="12.7" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
</symbol>
<symbol name="R">
<pin name="P$1" x="0" y="10.16" visible="off" length="middle" rot="R270"/>
<pin name="P$2" x="0" y="-10.16" visible="off" length="middle" rot="R90"/>
<wire x1="0" y1="5.08" x2="2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.81" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="0" y2="-5.08" width="0.254" layer="94"/>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="+V">
<pin name="+3.6V" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="1.27" y="5.08" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
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
</symbols>
<devicesets>
<deviceset name="SRR6028_INDUCTOR" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="L-US" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SRR6028_INDUCTOR">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="3W" package="LED_3W">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LUXEON_Z" package="LUXEON_Z">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LUXEON_C" package="LUXEON_C">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5630" package="LED_5630">
<connects>
<connect gate="G$1" pin="A" pad="A@1 A@2"/>
<connect gate="G$1" pin="C" pad="C@1 C@2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CREE_XPE" package="CREE_XPE_LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SSL150" package="OSLON_3030_LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ZXMN3B01F" prefix="Q" uservalue="yes">
<gates>
<gate name="G$1" symbol="N_MOSFET" x="-2.54" y="0"/>
</gates>
<devices>
<device name="SOT23" package="SOT-23">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="C0603">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIC12LF1571" prefix="IC">
<gates>
<gate name="G$1" symbol="PIC12LF1571" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC8">
<connects>
<connect gate="G$1" pin="!MCLR!" pad="4"/>
<connect gate="G$1" pin="GP2" pad="5"/>
<connect gate="G$1" pin="GP4" pad="3"/>
<connect gate="G$1" pin="GP5" pad="2"/>
<connect gate="G$1" pin="ICSPCLK" pad="6"/>
<connect gate="G$1" pin="ICSPDAT" pad="7"/>
<connect gate="G$1" pin="VDD" pad="1"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="R1206">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="R0805">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="R0603">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
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
<deviceset name="CR2354_TABBED" uservalue="yes">
<gates>
<gate name="G$1" symbol="CELL" x="0" y="7.62"/>
</gates>
<devices>
<device name="" package="CR2354_TABBED">
<connects>
<connect gate="G$1" pin="+V" pad="+3V"/>
<connect gate="G$1" pin="0V" pad="GND"/>
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
<part name="U$2" library="z0" deviceset="GND" device=""/>
<part name="U$3" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$7" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$8" library="z0" deviceset="GND" device=""/>
<part name="U$11" library="z0" deviceset="GND" device=""/>
<part name="D1" library="tritiled" deviceset="LED" device="LUXEON_C" value="Luxeon C"/>
<part name="L1" library="tritiled" deviceset="SRR6028_INDUCTOR" device="" value="1m"/>
<part name="U$13" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$14" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$15" library="z0" deviceset="GND" device=""/>
<part name="Q1" library="tritiled" deviceset="ZXMN3B01F" device="SOT23" value="ZXMN3B01FTA"/>
<part name="C1" library="tritiled" deviceset="C" device="1206" value="10u"/>
<part name="U1" library="tritiled" deviceset="PIC12LF1571" device=""/>
<part name="R1" library="tritiled" deviceset="R" device="1206" value="100"/>
<part name="U$1" library="tritiled" deviceset="CR2354_TABBED" device="" value="CR2354"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="66.04" y="15.24" rot="MR0"/>
<instance part="U$3" gate="G$1" x="66.04" y="73.66" rot="MR0"/>
<instance part="U$7" gate="G$1" x="-20.32" y="71.12"/>
<instance part="U$8" gate="G$1" x="-20.32" y="15.24"/>
<instance part="U$11" gate="G$1" x="129.54" y="15.24"/>
<instance part="D1" gate="G$1" x="152.4" y="73.66" rot="MR180"/>
<instance part="L1" gate="G$1" x="129.54" y="73.66" smashed="yes">
<attribute name="NAME" x="134.62" y="74.93" size="1.778" layer="95"/>
<attribute name="VALUE" x="134.62" y="69.85" size="1.778" layer="96"/>
</instance>
<instance part="U$13" gate="G$1" x="129.54" y="99.06"/>
<instance part="U$14" gate="G$1" x="22.86" y="71.12"/>
<instance part="U$15" gate="G$1" x="22.86" y="15.24"/>
<instance part="Q1" gate="G$1" x="119.38" y="45.72"/>
<instance part="C1" gate="G$1" x="22.86" y="43.18"/>
<instance part="U1" gate="G$1" x="66.04" y="50.8"/>
<instance part="R1" gate="G$1" x="-20.32" y="58.42" smashed="yes" rot="R180">
<attribute name="NAME" x="-30.48" y="55.88" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-25.4" y="55.88" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="U$1" gate="G$1" x="-20.32" y="33.02"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="GND"/>
<wire x1="-20.32" y1="20.32" x2="-20.32" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="0V"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="VSS"/>
<wire x1="66.04" y1="20.32" x2="66.04" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="U$11" gate="G$1" pin="GND"/>
<wire x1="129.54" y1="20.32" x2="129.54" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$15" gate="G$1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="P$2"/>
<wire x1="22.86" y1="20.32" x2="22.86" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="129.54" y1="53.34" x2="129.54" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="129.54" y1="58.42" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="152.4" y1="66.04" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="152.4" y1="58.42" x2="129.54" y2="58.42" width="0.1524" layer="91"/>
<junction x="129.54" y="58.42"/>
<pinref part="Q1" gate="G$1" pin="D"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="1"/>
<pinref part="U$13" gate="G$1" pin="+3.6V"/>
<wire x1="129.54" y1="81.28" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="129.54" y1="88.9" x2="129.54" y2="99.06" width="0.1524" layer="91"/>
<wire x1="152.4" y1="81.28" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="152.4" y1="88.9" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<junction x="129.54" y="88.9"/>
</segment>
<segment>
<pinref part="U$14" gate="G$1" pin="+3.6V"/>
<wire x1="22.86" y1="71.12" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<pinref part="U$3" gate="G$1" pin="+3.6V"/>
<wire x1="66.04" y1="68.58" x2="66.04" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="P$2"/>
<pinref part="U$7" gate="G$1" pin="+3.6V"/>
<wire x1="-20.32" y1="68.58" x2="-20.32" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<pinref part="U1" gate="G$1" pin="GP5"/>
<wire x1="111.76" y1="43.18" x2="93.98" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GP4"/>
<wire x1="93.98" y1="43.18" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="86.36" y1="50.8" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="50.8" x2="93.98" y2="43.18" width="0.1524" layer="91"/>
<junction x="93.98" y="43.18"/>
</segment>
</net>
<net name="VBATT" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="P$1"/>
<wire x1="-20.32" y1="43.18" x2="-20.32" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="+V"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="102,1,66.04,73.66,+3.6V,+3.3V,,,,"/>
<approved hash="102,1,-10.16,53.34,+3.6V,+3.3V,,,,"/>
<approved hash="102,1,-63.5,71.12,+3.6V,+3.3V,,,,"/>
<approved hash="102,1,157.48,99.06,+3.6V,+3.3V,,,,"/>
<approved hash="102,1,-27.94,53.34,+3.6V,+3.3V,,,,"/>
<approved hash="104,1,-116.84,33.02,B1,0V,GND,,,"/>
<approved hash="104,1,-116.84,50.8,B1,+V,VBATT,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
