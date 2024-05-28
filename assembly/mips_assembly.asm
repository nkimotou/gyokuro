# This program uses MIPS Assembly to showcase assembler mimicry
.data
result: .word 0

.text
.globl main

main:
    # Load numbers into registers
    li $t0, 5
    li $t1, 10

    # Perform addition
    add $t2, $t0, $t1

    # Store result
    la $t3, result
    sw $t2, 0($t3)

    # Exit the program
    li $v0, 10   # syscall number for exit
    syscall
