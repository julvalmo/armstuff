.global _start

.text
_start:
    // Number to print
    mov x19, #369        // Example number to print

    // Convert the number to ASCII
    mov x0, x19         // Copy number to x0 for conversion
    mov x1, sp          // Use stack as a buffer
    sub sp, sp, #16     // Allocate 16 bytes on stack
    mov x2, #0          // Digit counter

convert_loop:
    mov x3, #10
    udiv x4, x0, x3     // Divide number by 10
    msub x5, x4, x3, x0 // Get remainder (current digit)
    add  x5, x5, #'0'   // Convert to ASCII
    strb w5, [x1, x2]   // Store digit in buffer
    add  x2, x2, #1     // Increase digit count
    mov  x0, x4         // Update number for next iteration
    cbnz x0, convert_loop // Continue if number is not zero

    // Reverse the digits
    mov x3, x2          // x3 = number of digits
    sub x3, x3, #1      // Adjust for 0-based indexing
    mov x4, #0          // Start index
reverse_loop:
    ldrb w5, [x1, x3]   // Load digit from end
    strb w5, [sp, x4]   // Store at beginning of stack buffer
    add  x4, x4, #1     // Increase start index
    sub  x3, x3, #1     // Decrease end index
    cmp  x4, x2
    b.lt reverse_loop   // Continue if start < end

    // Print the number
    mov x0, #1          // File descriptor: 1 (stdout)
    mov x1, sp          // Address of string to print
    mov x8, #64         // Syscall number for write
    svc #0              // Make the syscall

    // Print a newline
    mov x0, #1          // File descriptor: 1 (stdout)
    adr x1, newline     // Address of newline string
    mov x2, #1          // Length of string
    mov x8, #64         // Syscall number for write
    svc #0              // Make the syscall

    // Exit the program
    mov x0, #0          // Exit code
    mov x8, #93         // Syscall number for exit
    svc #0              // Make the syscall

.data
newline:
    .ascii "\n"
