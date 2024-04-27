.MODEL SMALL
             
org 100h

.DATA
    message db "Hello World!$"

.CODE

    MAIN PROC
        mov ah, 09h
        mov dx, offset message
        int 21h
        mov ah, 4ch
        int 21h
    MAIN ENDP  
    RET
    
END MAIN
