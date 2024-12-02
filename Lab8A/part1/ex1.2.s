.global _start
_start:
    LDR R0, =0x20000000
    LDR R1, [R0]