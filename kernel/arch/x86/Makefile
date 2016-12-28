all: start.o
	ld -arch i386 -T linker.ld -o kernel.bin start.o

start.o: start.asm
	nasm -f aout -o start.o start.asm
