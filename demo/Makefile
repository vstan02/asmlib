CC = nasm -felf64

BIN_DIR = bin
SRC_DIR = src
LIB_DIR = ../lib

EXECUTABLE = $(BIN_DIR)/demo
LIB_LIST = sys io

LIB_OBJECT = $(LIB_DIR)/$(lib).o
LIB_OBJECTS = $(foreach lib, $(LIB_LIST), $(LIB_OBJECT))

default: build run

setup:
	mkdir -p $(BIN_DIR)

build: $(SRC_DIR)/main.asm
	$(CC) $(SRC_DIR)/main.asm -o $(BIN_DIR)/main.o
	ld $(BIN_DIR)/main.o $(LIB_OBJECTS) -o $(EXECUTABLE)

run: $(EXECUTABLE)
	./$(EXECUTABLE)

dump: $(EXECUTABLE)
	objdump -d ./$(EXECUTABLE)
