global _start

extern sys_time
extern int_print
extern eol_print
extern sys_exit

section .text
	_start:
		call sys_time
		call int_print
		call eol_print
		call sys_exit
