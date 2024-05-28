; This program uses standard x86 NASM assembly to mimic assemblers
section .data
    msg db "Result: ", 0

section .bss
    result resb 4

section .text
    global _start

_start:
    ; Load numbers into registers
    mov eax, 5
    mov ebx, 10

    ; Perform addition
    add eax, ebx

    ; Convert result to string
    add eax, '0'
    mov [result], eax

    ; Print the result
    mov eax, 4        ; syscall number for sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, msg      ; message to write
    mov edx, 8        ; length of message
    int 0x80          ; call kernel

    mov eax, 4        ; syscall number for sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, result   ; result to write
    mov edx, 1        ; length of result
    int 0x80          ; call kernel

    ; Exit the program
    mov eax, 1        ; syscall number for sys_exit
    xor ebx, ebx      ; exit code 0
    int 0x80          ; call kernel
