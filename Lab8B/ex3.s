.global _start
.section .data
array: .word 10, 3, 7, 1, 9
size:  .word 5

.section .text
.global find_min_max

find_min_max:
    PUSH {R4, R5, R6}
    LDR R4, [R0]
    LDR R5, [R0]
    MOV R6, #1

loop:
    CMP R6, R1
    BEQ done
    LDR R7, [R0, R6, LSL #2]
    CMP R7, R4
    MOVLT R4, R7
    CMP R7, R5
    MOVGT R5, R7
    ADD R6, R6, #1

done:
    MOV R0, R4
    MOV R1, R5
    POP {R4, R5, R6}
    BX LR

_start:
    LDR R0, =array
    LDR R1, =size
    LDR R1, [R1]
    BL find_min_max
    MOV R2, R0
    MOV R3, R1

    MOV R7, #1
    SWI 0