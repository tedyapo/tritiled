all: tritiled_v30_selectable_runtime calibrator

XC8 = /opt/microchip/xc8/v1.34/bin/xc8

tritiled_v30_selectable_runtime: tritiled_v30_selectable_runtime.c HEF_access.asm
	${XC8} --chip=12LF1571 -P --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --double=24 --float=24 --rom=0-1ff --fill=1 --output=default,-inhx032 --summary=default,+psect,+class,+mem,+hex,+file tritiled_v30_selectable_runtime.c HEF_access.asm -P
	mv tritiled_v30_selectable_runtime.hex ../hex

calibrator: calibrator.c
	${XC8} --chip=12LF1571 -P --runtime=default,+clear,+init,-keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib --double=24 --float=24 --rom=0-1ff --fill=1 --output=default,-inhx032 --summary=default,+psect,+class,+mem,+hex,+file calibrator.c -P
	mv calibrator.hex ../hex

clean:
	rm -f *~ *.d *.obj *.pre *.as *.lst *.cmf *.cof *.hxl *.p1 *.sdb *.sym *.rlf *.hum *.mcu *.mum *.pum
