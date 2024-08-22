.global _start

_start:
    MOV x0, #1            // stdout (file descriptor)
    LDR x1, =message      // Load address of message
    LDR x2, =len          // Length of message (including newline)
    MOV x8, #64           // syscall number for write
    SVC 0

    MOV x8, #93           // syscall number for exit
    MOV x0, #0            // exit code 0
    SVC 0

.data
message:
    .asciz "Hola mundo!\n"
len=.-message
