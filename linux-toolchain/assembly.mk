PROGRAM=hello

SRC_FILES=$(PROGRAM).s
OUT=$(PROGRAM).x86_64
OUT_EX=$(OUT)

CC=gcc
GDB=gdb

assembly_build:
	$(DOCKER) "make _assembly_build"

_assembly_build: $(SRC_FILES)
	$(CC) -no-pie -o $(OUT_EX) $(SRC_FILES)
	chmod a+x $(OUT_EX)

assembly_build_debug:
	$(DOCKER) "make _assembly_build_debug"

_assebly_build_debug: $(SRC_FILES)
	$(CC) -g -no-pie -o $(OUT_EX) $(SRC_FILES)

assembly_debug:
	$(DOCKER) "make _assembly_debug"

_assembly_debug: _assembly_build_debug
	$(GDB) $(OUT_EX)
