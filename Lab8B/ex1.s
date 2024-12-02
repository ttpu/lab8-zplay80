.global _start

.section .data
result: .skip 40
N:      .word 10

.section .text
_start:
    LDR R1, =N
    LDR R2, [R1]
    MOV R3, #0
    MOV R4, #0
    LDR R6, =result

loop:
    CMP R3, R2
    BEQ done
    STR R4, [R6, R3, LSL #2]
    ADD R4, R4, #2
    ADD R3, R3, #1

done:
    MOV R7, #1
    SWI 0