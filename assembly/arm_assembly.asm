; This program uses ARM assembly to mimic assemblers
.section .data
    result: .word 0

.section .text
    .global _start

_start:
    ; Load numbers into registers
    ldr r0, =5
    ldr r1, =10

    ; Perform addition
    add r2, r0, r1

    ; Store result
    ldr r3, =result
    str r2, [r3]

    ; Exit the program
    mov r7, #1       ; syscall number for exit
    svc #0
