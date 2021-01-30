global _start

extern int_print
extern eol_print
extern sys_exit

section .text
	_start:
		mov rax, -575
		call int_print
		call eol_print
		call sys_exit
