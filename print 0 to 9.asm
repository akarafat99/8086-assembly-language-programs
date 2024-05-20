.model small
.stack 100H
.data
.code
MAIN PROC
    MOV CX, 10
    MOV DL, '0'
    
    MOV AH, 02H
    
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
MAIN ENDP

END MAIN
