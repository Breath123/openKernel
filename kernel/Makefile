ARCH=x86
KERNEL=kernel.elf
SDKDIR=../sdk
INCDIR= -I ./arch/$(ARCH)

include ./arch/$(ARCH)/config.make
include ./arch/$(ARCH)/Makefile

all: $(KERNEL)

$(KERNEL): $(OBJS)
	$(LD) $(LDFLAG) -o $@ $^ 
	cp $(KERNEL) $(SDKDIR)/bootdisk/
	
%.o: %.asm
	$(ASM) $(ASMFLAG)  -c $< -o  $@
	
%.o: %.c
	$(CC) $(FLAG) -c $< -o  $@
	
%.o: %.S
	$(CC) $(FLAG) -c $< -o  $@
	
run:
	cd $(SDKDIR) &&	sh ./diskimage.sh
	cd $(SDKDIR) &&	sh ./qemu.sh
	
clean:
	rm -f $(OBJS)  $(KERNEL)