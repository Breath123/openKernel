all: start.o
	ld -arch i386 -T linker.ld -o kernel.elf start.o

start.o: start.asm
	nasm -f aout -o start.o start.asm
	
clean:
	rm -f *.o *.elf
