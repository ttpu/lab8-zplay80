.global _start

.section .data
array:  .word 1, 2, 3, 4, 5
size:   .word 5

.section .text
_start:
    LDR R1, =array
    LDR R2, =size
    LDR R3, [R2]
    MOV R4, #0
    MOV R5, #0

loop:
    CMP R5, R3
    BEQ done
    LDR R6, [R1, R5, LSL #2]
    ADD R4, R4, R6
    ADD R5, R5, #1

done:
    MOV R7, #1
    SWI 0
