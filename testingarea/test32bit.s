.global _start

_start:
        MOV R0,#1
        MOV R1,#30
        MOV R2,#2
        MOV R7,#4
        SWI 0

        MOV R7,#1
        SWI 0

func:
        MOV R0,#1
        LDR R1,=message
        LDR R2,=len
        MOV R7,#4
        SWI 0

        MOV R7,#1
        SWI 0

.data
message:
        .asciz "Hello World! \n"
len = .-message
