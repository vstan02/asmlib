global _start

extern srand
extern rand
extern sys_time
extern int_print
extern eol_print
extern sys_exit

section .text
	_start:
		mov rax, 1
		call srand
		call rand
		call int_print
		call eol_print
		call sys_exit
