.MODEL SMALL
.STACK 100H

.DATA
    num1 DB ?
    num2 DB ?
    num3 DB ?
    

.CODE
MAIN PROC
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    sub al, 30h
    mov num1, al
    
    mov ah, 1
    int 21h
    sub al, 30h
    mov num2, al
    
    mul num1
    mov num3, al
    aam
    
    add ah, 30h
    add al, 30h
    
    mov bx, ax
               
    ; to make new line
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    ;print the output
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h 

MAIN ENDP


END MAIN
