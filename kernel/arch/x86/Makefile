all: start.o main.o scrn.o
	ld -melf_i386 -static -L ./ -T linker.ld -o kernel.elf start.o main.o scrn.o

start.o: start.asm
	nasm -f elf -o start.o start.asm
	
.c.o:
	gcc -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -nostdinc -fno-builtin -I./ -c $^ -o $@
	
clean:
	rm -f *.o *.elf