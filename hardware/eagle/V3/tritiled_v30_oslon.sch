<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting keepoldvectorfont="yes"/>
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
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="yes"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="tritiled">
<packages>
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
<text x="3.81" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="3.81" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
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
<package name="C0603">
<smd name="P$1" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="P$2" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<wire x1="-1.375" y1="0.7" x2="1.375" y2="0.7" width="0.127" layer="21"/>
<wire x1="1.375" y1="0.7" x2="1.375" y2="-0.7" width="0.127" layer="21"/>
<wire x1="1.375" y1="-0.7" x2="-1.375" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-1.375" y1="-0.7" x2="-1.375" y2="0.7" width="0.127" layer="21"/>
<text x="3.81" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="3.81" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
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
<package name="R0805">
<smd name="P$1" x="-0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<smd name="P$2" x="0.875" y="0" dx="1.1" dy="1.4" layer="1"/>
<wire x1="-1.6" y1="0.9" x2="1.6" y2="0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="0.9" x2="1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="-0.9" x2="-1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-0.9" x2="-1.6" y2="0.9" width="0.127" layer="21"/>
</package>
<package name="R0603">
<smd name="P$1" x="-0.725" y="0" dx="0.95" dy="0.95" layer="1"/>
<smd name="P$2" x="0.725" y="0" dx="0.95" dy="0.95" layer="1"/>
<wire x1="-1.4" y1="0.7" x2="1.4" y2="0.7" width="0.127" layer="21"/>
<wire x1="1.4" y1="0.7" x2="1.4" y2="-0.7" width="0.127" layer="21"/>
<wire x1="1.4" y1="-0.7" x2="-1.4" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-1.4" y1="-0.7" x2="-1.4" y2="0.7" width="0.127" layer="21"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SM8">
<smd name="1" x="-0.975" y="-1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="2" x="-0.325" y="-1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="3" x="0.325" y="-1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="4" x="0.975" y="-1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="5" x="0.975" y="1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="6" x="0.325" y="1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="7" x="-0.325" y="1.7" dx="0.3" dy="1.6" layer="1"/>
<smd name="8" x="-0.975" y="1.7" dx="0.3" dy="1.6" layer="1"/>
<wire x1="-1.23" y1="1.4" x2="-1.475" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.475" y1="1.4" x2="-1.475" y2="-1.4" width="0.127" layer="21"/>
<wire x1="1.23" y1="1.4" x2="1.475" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.475" y1="1.4" x2="1.475" y2="-1.4" width="0.127" layer="21"/>
<wire x1="1.475" y1="-1.4" x2="1.23" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-1.4475" y1="-1.4" x2="-1.23" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-1.4" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-1.4" x2="-0.6" y2="-1.4" width="0.127" layer="21"/>
<text x="2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
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
<symbol name="GND">
<pin name="GND" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-6.35" x2="1.905" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.254" layer="94"/>
<text x="2.54" y="-2.54" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
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
<symbol name="+V">
<pin name="+3.6V" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="1.27" y="5.08" size="1.778" layer="94">&gt;VALUE</text>
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
<text x="17.78" y="15.24" size="1.778" layer="94">&gt;NAME</text>
<text x="17.78" y="12.7" size="1.778" layer="94">&gt;VALUE</text>
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
<symbol name="74LVC123">
<pin name="!A!" x="-15.24" y="5.08" length="middle"/>
<pin name="B" x="-15.24" y="0" length="middle"/>
<pin name="!CLR!" x="-15.24" y="-5.08" length="middle"/>
<pin name="VCC" x="0" y="17.78" length="middle" rot="R270"/>
<pin name="GND" x="0" y="-17.78" length="middle" rot="R90"/>
<pin name="R" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="C" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="Q" x="15.24" y="-5.08" length="middle" rot="R180"/>
<wire x1="-10.16" y1="12.7" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<text x="12.7" y="12.7" size="1.778" layer="94" font="vector">&gt;NAME</text>
<text x="12.7" y="10.16" size="1.778" layer="94" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="P_MOSFET">
<pin name="G" x="-10.16" y="2.54" visible="off" length="middle"/>
<pin name="S" x="7.62" y="7.62" visible="off" length="middle" rot="R270"/>
<pin name="D" x="7.62" y="-7.62" visible="off" length="middle" rot="R90"/>
<wire x1="0" y1="5.08" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.81" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="3.81" width="0.254" layer="94"/>
<text x="10.16" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="OSLON_SIGNAL" uservalue="yes">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="OSLON_3030_LED">
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
<deviceset name="74LVC1G123">
<gates>
<gate name="G$1" symbol="74LVC123" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SM8">
<connects>
<connect gate="G$1" pin="!A!" pad="1"/>
<connect gate="G$1" pin="!CLR!" pad="3"/>
<connect gate="G$1" pin="B" pad="2"/>
<connect gate="G$1" pin="C" pad="6"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="Q" pad="5"/>
<connect gate="G$1" pin="R" pad="7"/>
<connect gate="G$1" pin="VCC" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DMG2305UX" prefix="Q" uservalue="yes">
<gates>
<gate name="G$1" symbol="P_MOSFET" x="0" y="0"/>
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
<part name="D1" library="tritiled" deviceset="OSLON_SIGNAL" device="" value="OSLON S.V."/>
<part name="B1" library="tritiled" deviceset="BAT-HLD-001-THM_CR2032" device=""/>
<part name="U$3" library="tritiled" deviceset="GND" device=""/>
<part name="L1" library="tritiled" deviceset="SRR6028_INDUCTOR" device="" value="1m"/>
<part name="Q1" library="tritiled" deviceset="ZXMN3B01F" device="SOT23" value="IRLML6244"/>
<part name="U$6" library="tritiled" deviceset="GND" device=""/>
<part name="U$7" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$10" library="tritiled" deviceset="+3.0V" device=""/>
<part name="IC1" library="tritiled" deviceset="PIC12LF1571" device=""/>
<part name="U$13" library="tritiled" deviceset="GND" device=""/>
<part name="U$14" library="tritiled" deviceset="+3.0V" device=""/>
<part name="C2" library="tritiled" deviceset="C" device="0805" value="1u"/>
<part name="U$15" library="tritiled" deviceset="GND" device=""/>
<part name="U$16" library="tritiled" deviceset="+3.0V" device=""/>
<part name="R2" library="tritiled" deviceset="R" device="1206" value="100"/>
<part name="C3" library="tritiled" deviceset="C" device="1206" value="10u"/>
<part name="U$27" library="tritiled" deviceset="GND" device=""/>
<part name="U$28" library="tritiled" deviceset="+3.0V" device=""/>
<part name="IC2" library="tritiled" deviceset="74LVC1G123" device=""/>
<part name="U$22" library="tritiled" deviceset="GND" device=""/>
<part name="R3" library="tritiled" deviceset="R" device="0603" value="51k"/>
<part name="C5" library="tritiled" deviceset="C" device="0603" value="100p"/>
<part name="Q2" library="tritiled" deviceset="DMG2305UX" device="SOT23" value="DMG2305UX"/>
<part name="U$24" library="tritiled" deviceset="+3.0V" device=""/>
<part name="U$4" library="tritiled" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="D1" gate="G$1" x="76.2" y="63.5" rot="MR180"/>
<instance part="B1" gate="G$1" x="-193.04" y="33.02"/>
<instance part="U$3" gate="G$1" x="-193.04" y="20.32"/>
<instance part="L1" gate="G$1" x="55.88" y="63.5" smashed="yes">
<attribute name="NAME" x="60.96" y="64.77" size="1.778" layer="95"/>
<attribute name="VALUE" x="60.96" y="59.69" size="1.778" layer="96"/>
</instance>
<instance part="Q1" gate="G$1" x="45.72" y="38.1"/>
<instance part="U$6" gate="G$1" x="55.88" y="27.94"/>
<instance part="U$7" gate="G$1" x="-193.04" y="73.66"/>
<instance part="U$10" gate="G$1" x="55.88" y="86.36"/>
<instance part="IC1" gate="G$1" x="-86.36" y="40.64" smashed="yes">
<attribute name="NAME" x="-78.74" y="60.96" size="1.778" layer="94"/>
<attribute name="VALUE" x="-78.74" y="55.88" size="1.778" layer="94"/>
</instance>
<instance part="U$13" gate="G$1" x="-86.36" y="20.32"/>
<instance part="U$14" gate="G$1" x="-86.36" y="63.5"/>
<instance part="C2" gate="G$1" x="-129.54" y="33.02"/>
<instance part="U$15" gate="G$1" x="-129.54" y="20.32"/>
<instance part="U$16" gate="G$1" x="-129.54" y="48.26"/>
<instance part="R2" gate="G$1" x="-193.04" y="60.96"/>
<instance part="C3" gate="G$1" x="-144.78" y="33.02"/>
<instance part="U$27" gate="G$1" x="-144.78" y="20.32"/>
<instance part="U$28" gate="G$1" x="-144.78" y="48.26"/>
<instance part="IC2" gate="G$1" x="-10.16" y="40.64" smashed="yes">
<attribute name="NAME" x="-5.08" y="63.5" size="1.778" layer="94" font="vector"/>
<attribute name="VALUE" x="-5.08" y="58.42" size="1.778" layer="94" font="vector"/>
</instance>
<instance part="U$22" gate="G$1" x="-10.16" y="20.32"/>
<instance part="R3" gate="G$1" x="22.86" y="73.66" smashed="yes" rot="R180">
<attribute name="NAME" x="30.48" y="76.2" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.48" y="71.12" size="1.778" layer="96"/>
</instance>
<instance part="C5" gate="G$1" x="22.86" y="53.34"/>
<instance part="Q2" gate="G$1" x="-48.26" y="78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="-53.34" y="93.98" size="1.778" layer="95"/>
<attribute name="VALUE" x="-53.34" y="88.9" size="1.778" layer="96"/>
</instance>
<instance part="U$24" gate="G$1" x="-60.96" y="93.98"/>
<instance part="U$4" gate="G$1" x="-30.48" y="20.32"/>
</instances>
<busses>
</busses>
<nets>
<net name="+3.6V" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="+3.6V"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="55.88" y1="86.36" x2="55.88" y2="78.74" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="55.88" y1="78.74" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<wire x1="76.2" y1="78.74" x2="55.88" y2="78.74" width="0.1524" layer="91"/>
<junction x="55.88" y="78.74"/>
</segment>
<segment>
<pinref part="U$14" gate="G$1" pin="+3.6V"/>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<wire x1="-86.36" y1="63.5" x2="-86.36" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$16" gate="G$1" pin="+3.6V"/>
<pinref part="C2" gate="G$1" pin="P$1"/>
<wire x1="-129.54" y1="48.26" x2="-129.54" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="+3.6V"/>
<pinref part="R2" gate="G$1" pin="P$1"/>
<wire x1="-193.04" y1="71.12" x2="-193.04" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="P$1"/>
<pinref part="U$28" gate="G$1" pin="+3.6V"/>
<wire x1="-144.78" y1="38.1" x2="-144.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="S"/>
<pinref part="U$24" gate="G$1" pin="+3.6V"/>
<wire x1="-55.88" y1="86.36" x2="-60.96" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="86.36" x2="-60.96" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="30.48" x2="55.88" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VSS"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
<wire x1="-86.36" y1="22.86" x2="-86.36" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="0V"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="-193.04" y1="25.4" x2="-193.04" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="P$2"/>
<pinref part="U$15" gate="G$1" pin="GND"/>
<wire x1="-129.54" y1="27.94" x2="-129.54" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="P$2"/>
<pinref part="U$27" gate="G$1" pin="GND"/>
<wire x1="-144.78" y1="27.94" x2="-144.78" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND"/>
<pinref part="U$22" gate="G$1" pin="GND"/>
<wire x1="-10.16" y1="22.86" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="-30.48" y1="17.78" x2="-30.48" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="!A!"/>
<wire x1="-30.48" y1="45.72" x2="-25.4" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="B1" gate="G$1" pin="+V"/>
<pinref part="R2" gate="G$1" pin="P$2"/>
<wire x1="-193.04" y1="50.8" x2="-193.04" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$1" pin="D"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="76.2" y1="55.88" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<wire x1="76.2" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
<junction x="55.88" y="50.8"/>
<wire x1="55.88" y1="50.8" x2="55.88" y2="45.72" width="0.1524" layer="91"/>
<wire x1="55.88" y1="55.88" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$1"/>
<pinref part="C5" gate="G$1" pin="P$1"/>
<wire x1="22.86" y1="58.42" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="R"/>
<wire x1="5.08" y1="45.72" x2="12.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="12.7" y1="45.72" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="12.7" y1="58.42" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<junction x="22.86" y="58.42"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C"/>
<pinref part="C5" gate="G$1" pin="P$2"/>
<wire x1="5.08" y1="40.64" x2="22.86" y2="40.64" width="0.1524" layer="91"/>
<wire x1="22.86" y1="40.64" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="VCC"/>
<wire x1="-10.16" y1="58.42" x2="-10.16" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="86.36" x2="22.86" y2="86.36" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="P$2"/>
<wire x1="22.86" y1="86.36" x2="22.86" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="86.36" x2="-10.16" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="86.36" x2="-33.02" y2="86.36" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="D"/>
<junction x="-10.16" y="86.36"/>
<pinref part="IC2" gate="G$1" pin="!CLR!"/>
<wire x1="-25.4" y1="35.56" x2="-33.02" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="35.56" x2="-33.02" y2="86.36" width="0.1524" layer="91"/>
<junction x="-33.02" y="86.36"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="Q"/>
<wire x1="5.08" y1="35.56" x2="38.1" y2="35.56" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="-50.8" y1="68.58" x2="-50.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GP5"/>
<wire x1="-50.8" y1="33.02" x2="-66.04" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GP4"/>
<pinref part="IC2" gate="G$1" pin="B"/>
<wire x1="-66.04" y1="40.64" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
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
