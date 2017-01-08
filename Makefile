all: 
	@echo "Building Kernel"
	make -C ./kernel
	
clean: 
	@echo "Clean Kernel"
	make -C ./kernel clean

run:
	@echo "Running Dev Operating System."
	cd ./sdk && sudo bash ./diskimage.sh
	cd ./sdk && ./qemu.sh