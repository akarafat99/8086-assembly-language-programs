.MODEL SMALL

.STACK 100H

.DATA 
    num1 DW 5
 
.CODE
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV DX, num1
        ADD DX, '0'
        MOV AH, 02H
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        
    MAIN ENDP
    
    RET
    
 END MAIN
