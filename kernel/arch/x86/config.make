LDFLAG= -melf_i386 -static  -L ./  -T ./arch/$(ARCH)/linker.ld
CC=gcc
FLAG= $(INCDIR) -g -O2 -w -trigraphs -fno-builtin  -fno-exceptions -fno-stack-protector -O0 -m32  -fno-rtti -nostdlib -nodefaultlibs 
ASM=nasm  
ASMFLAG=-f aout -o
LD=ld
