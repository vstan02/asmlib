global _start

extern arr_print
extern chr_print
extern eol_print
extern sys_exit

section .data
	array dq 2, 3, 5, 2, 6, 5
	arrlen equ ($-array)/8

section .text
	_start:
		mov rax, array
		mov rdi, arrlen
		call arr_print
		call eol_print
		call sys_exit
