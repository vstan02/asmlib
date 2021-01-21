global eol_print
global chr_print
global str_print

extern str_len

section .data
	SYS_WRITE equ 0x1
	SYS_STDOUT equ 1

section .bss
	CHR_BSS resb 1

section .text
	eol_print:
		push rax

		mov rax, 0xA
		call chr_print

		pop rax
		ret

	; input:
	; : rax = char
	chr_print:
		push rax
		push rdi
		push rsi
		push rdx

		mov [CHR_BSS], al
		mov rax, SYS_WRITE
		mov rdi, SYS_STDOUT
		mov rsi, CHR_BSS
		mov rdx, 1
		syscall

		pop rdx
		pop rsi
		pop rdi
		pop rax
		ret

	; input:
	; : rax = string
	str_print:
		push rax
		push rdi
		push rsi
		push rdx

		mov rsi, rax
		call str_len
		mov rdx, rax
		mov rax, SYS_WRITE
		mov rdi, SYS_STDOUT
		syscall

		pop rdx
		pop rsi
		pop rdi
		pop rax
		ret
