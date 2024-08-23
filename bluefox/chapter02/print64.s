.arch armv8- a                  // Define architecture 
.text                          // Begin .text section
 .global main                   // Define global symbol main
 main:                          // Start of the main function
       ldr x0, =MYSTRING       // Load the address of MYSTRING into x0
       bl printf               // Call printf to print the string
       mov x0, #0              // Move the value #0 into x0
       bl exit                 // Call exit(0)
 .section .rodata               // Define the .rodata section for the string
 .balign 8                      // Align our string to an 8- bye boundary
 MYSTRING:                      // Define the MYSTRING label
 .asciz "Hello world\n"         // Null- terminated ascii string
