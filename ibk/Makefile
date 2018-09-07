PROGRAM = ibk.elf

DOCKER_TOOLCHAIN = docker run --rm -v '$(PWD)':/pwd --workdir /pwd "$$(docker build -q .)"

ifneq (, $(shell which arm-linux-gnueabihf-as))
  ARM_LINUX_GNUEABI ?= arm-linux-gnueabihf
else ifneq (, $(shell which arm-linux-gnueabi-as))
  ARM_LINUX_GNUEABI ?= arm-linux-gnueabi
else
  ARM_LINUX_GNUEABI ?= $(DOCKER_TOOLCHAIN) arm-linux-gnueabi
endif

ifneq (, $(shell which qemu-arm))
  QEMU_ARM ?= qemu-arm
else
  QEMU_ARM ?= $(DOCKER_TOOLCHAIN) qemu-arm
endif

%.o: %.asm
	$(ARM_LINUX_GNUEABI)-as $^ -o $@

%.elf: %.o
	$(ARM_LINUX_GNUEABI)-ld $^ -o $@

.PHONY: all
all: $(PROGRAM)

.PHONY: clean
clean:
	$(RM) *.o *.elf $(PROGRAM)

.PHONY: run
run: $(PROGRAM)
	@echo qemu-arm $^
	@$(QEMU_ARM) $^
