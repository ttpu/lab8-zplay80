.global _start
_start:
    
    MOV R1, #10
    STR R1, [R0]

    LDR R2, [R0]