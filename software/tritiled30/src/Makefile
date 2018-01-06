all: tritiled_v30_selectable_runtime

XC8 = /opt/microchip/xc8/v1.34/bin/xc8
tritiled_v30_selectable_runtime: tritiled_v30_selectable_runtime.c HEF_access.asm
	${XC8} --chip=12LF1571 tritiled_v30_selectable_runtime.c HEF_access.asm -P
	mv tritiled_v30_selectable_runtime.hex ../hex

clean:
	rm -f *~ *.d *.obj *.pre *.as *.lst *.cmf *.cof *.hxl *.p1 *.sdb *.sym *.rlf
