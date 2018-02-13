all: dump keygen

dump: dump.asm
	nasm -felf32 dump.asm

keygen: dump.o keygen.c
	gcc -m32 dump.o keygen.c -o keygen

clean:
	rm dump.o keygen
