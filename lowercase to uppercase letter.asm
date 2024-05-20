.model small
.stack 100H
.data

    var DB ? 
    newline DB 10, 13, '$' ; Newline characters
    
.code
MAIN PROC  
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV var, AL
    
    SUB var, 32 
    MOV BL, var
        
    MOV AH, 02h
    MOV DL, 10
    INT 21H 
    MOV AH, 02h
    MOV DL, 13
    INT 21H   
    
    ;MOV AH, 9
    ;LEA DX, newline
    ;INT 21h
    
    MOV AH, 02h
    MOV DL, BL
    INT 21H
    
MAIN ENDP

END MAIN
