.MODEL SMALL

.STACK 100H

.DATA
    
    num1 DW 45
 

.CODE
    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AX, num1
        MOV BX, 10
        
        DIV BX    
         
        MOV CL, DL  
        
        MOV DL, AL
        ADD DX, '0'
        MOV AH, 02H
        INT 21H
        
        MOV DL, CL
        ADD DX, '0'
        MOV AH, 02H
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        
    MAIN ENDP
    
    RET
    
 END MAIN
