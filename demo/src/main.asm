global _start

extern str_print
extern sys_exit

section .data
	msg db "Hello World!", 0xA
	msg_size equ $-msg

section .text
	_start:
		mov rax, msg
		mov rdi, msg_size
		call str_print
		call sys_exit
