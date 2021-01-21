global _start

extern eol_print
extern str_print
extern sys_exit

section .data
	msg db "Hello World!", 0x0

section .text
	_start:
		mov rax, msg
		call str_print
		call eol_print
		call sys_exit
