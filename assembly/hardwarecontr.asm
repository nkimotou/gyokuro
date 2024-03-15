.MODEL SMALL
.STACK 100h

.DATA
    PORT_BASE equ 378h   ; Base address of the parallel port

.CODE
MAIN PROC
    MOV AX, @DATA       ; Initialize data segment
    MOV DS, AX

    ; Set up parallel port for output
    MOV DX, PORT_BASE   ; Load the port address into DX
    MOV AL, 0FFh        ; Set light off
    OUT DX, AL          ; Output the value to the port

    ; Infinite loop to toggle the output
toggle_loop:
    MOV AL, 0FFh        ; Load 0xFF 
    OUT DX, AL          ; Output to the port
    CALL DELAY          ; Delay to see the light of the machine
    MOV AL, 0           ; Load 0x00 
    OUT DX, AL          ; Output to the port
    CALL DELAY          ; Delay
    JMP toggle_loop     ; Repeat 

MAIN ENDP

DELAY PROC              ; Delay subroutine
    ; Delay code here
    RET
DELAY ENDP

END MAIN
