; This example is for x86 architecture on Linux using the 32-bit syscall interface. 
; Different architectures and operating systems will have different conventions and system call interfaces.

section .data
    ; This is the message data we will print when the program starts.
    msg db 'Hello, world!', 0

section .text
    global _start

_start:
    ; Printing to the console  process is as follows: 
    mov eax, 4         ; syscall number for 'write'
    mov ebx, 1         ; file descriptor 1 (stdout)
    mov ecx, msg       ; address of the message
    mov edx, 13        ; message length
    int 0x80           ; invoke syscall
    
    ; Exit the program
    mov eax, 1         ; syscall number for 'exit'
    xor ebx, ebx       ; return 0
    int 0x80           ; invoke syscall
