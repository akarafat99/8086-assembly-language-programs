.model small
.stack 100H
.data
.code
MAIN PROC
    MOV CX, 26
    MOV DL, 'A'
    MOV AH, 2
    
    loop1:
    INT 21H
    
    MOV BL, DL 
    
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV DL, BL
    
    INC DL
    LOOP loop1
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP

END MAIN
