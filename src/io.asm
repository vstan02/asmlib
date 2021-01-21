global str_print

section .data
	SYS_WRITE equ 0x1
	SYS_STDOUT equ 1

section .text
	; input:
	; : rax = string
	; : rdi = string size
	str_print:
		push rax
		push rdi
		push rsi
		push rdx

		mov rsi, rax
		mov rdx, rdi
		mov rax, SYS_WRITE
		mov rdi, SYS_STDOUT
		syscall

		pop rdx
		pop rsi
		pop rdi
		pop rax
		ret
