.MODEL SMALL
.STACK 100H

.DATA
    
    result DW ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 7
    MOV BX, 9
    MUL BX          ; work in two single digits mul
    
    aam
    MOV BX, AX
    ADD BH, 30H
    ADD BL, 30H
    
    MOV AH, 02H
    MOV DL, BH
    INT 21H
    
    MOV AH, 02H
    MOV DL, BL
    INT 21H

MAIN ENDP


END MAIN
