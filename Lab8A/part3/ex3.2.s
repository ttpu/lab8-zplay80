.global _start
_start:
    MOV     R0, #0              
    MOV     R2, #0              
    LDR     R1, =10             

loop:
    ADD     R0, R0, R2          
    ADD     R2, R2, #1         
    CMP     R2, R1              
    BLE     loop                
    MOV     R7, #1