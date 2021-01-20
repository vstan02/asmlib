global _start

section .data
	msg db "Hello World!", 0xA
	msg_size equ $-msg

section .text
	_start:
		mov rax, 0x1
		mov rdi, 1
		mov rsi, msg
		mov rdx, msg_size
		syscall

		mov rax, 0x3c
		mov rdi, 0
		syscall
