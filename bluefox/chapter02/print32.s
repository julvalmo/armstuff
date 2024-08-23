.arch armv7- a                  // Define architecture 
.section .text                 // Begin .text section
 .global _start                 // Define global symbol main
 _start:                        // Start of the main function
       ldr r0, =MYSTRING       // Load the address of MYSTRING into x0
       bl printf               // Call printf to print the string
       mov r0, #0              // Move the value #0 into x0
       bl exit                 // Call exit(0)
 .section .rodata               // Define the .rodata section for the string
 .balign 8                      // Align our string to an 8- byte boundary
 MYSTRING:                      // Define the MYSTRING label
 .asciz "Hello world\n"         // Null- terminated ascii string
