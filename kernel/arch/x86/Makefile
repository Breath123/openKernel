all: start.o main.o
	ld -melf_i386 -static -L ./ -T linker.ld -o kernel.elf start.o main.o

start.o: start.asm
	nasm -f elf -o start.o start.asm
	
main.o: main.c
	gcc -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -nostdinc -fno-builtin -I./ -c -o main.o main.c
	
clean:
	rm -f *.o *.elf
