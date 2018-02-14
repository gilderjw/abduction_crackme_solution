linux: dump keygen

windows: dumpwin keygenwin

dump: dump.asm
	nasm -felf32 dump.asm

dumpwin: dump.asm
	nasm -fwin32 -DWINDOWS dump.asm

keygen: dump.o keygen.c
	gcc -m32 dump.o keygen.c -o keygen

keygenwin: keygen.c dump.obj
	cl keygen.c dump.obj /link legacy_stdio_definitions.lib

clean:
	rm dump.o keygen dump.obj keygen.obj keygen.exe
