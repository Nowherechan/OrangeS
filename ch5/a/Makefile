
.PHONY : everything

everything:
	nasm -f elf hello.asm -o hello.o
	i386-elf-ld -s hello.o -o hello
