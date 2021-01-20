EXECUTABLE = Test

default: build run

build: src/main.asm
	nasm -felf64 src/main.asm -o bin/main.o
	ld bin/main.o -o bin/$(EXECUTABLE)

run: bin/$(EXECUTABLE)
	./bin/$(EXECUTABLE)

dump: bin/$(EXECUTABLE)
	objdump -d ./bin/$(EXECUTABLE)
