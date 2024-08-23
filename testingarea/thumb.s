.section .text
.global _start

_start:
	mov r0,#1
	adr r1,mystring
	mov r2,#6
	mov r7,#4
	svc #0

_exit:
	mov r7,#0
	svc #0

mystring:
	.string "Hello\n"
