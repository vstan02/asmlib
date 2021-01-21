global sys_exit

section .data
	SYS_EXIT equ 0x3c

section .text
	sys_exit:
		mov rax, SYS_EXIT
		xor rdi, rdi
		syscall
