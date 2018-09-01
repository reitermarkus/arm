PROGRAM = division

$(PROGRAM):
	arm-linux-gnu-as $@.asm -o $@.o
	arm-linux-gnu-ld $@.o -o $@

.PHONY: all
all: $(PROGRAM)

.PHONY: clean
clean:
	$(RM) *.o $(PROGRAM)

.PHONY: run
run: $(PROGRAM)
	qemu-arm $^; echo $$?
