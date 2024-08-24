.arch armv8-a
.text

.global _start

_start:
	mov x0, #1           // stdout filedescriptor
	ldr x1, =message     // 
	mov x2, #14         // longitud de la cadena
	mov x8, #64          // numero del syscall write()
	svc #1

message:
	.asciz "Hola a todos!\n"
