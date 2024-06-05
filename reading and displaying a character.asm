.model small
.stack 100h
.data
   var1 db ?
    
.code
    main proc 
        
        mov ah, 01h
        int 21h
        
        mov var1, al
        
        ;print new line
        call printNewLine
        
        ;print the inputed character
        mov dl, var1
        mov ah, 02h
        int 21h
        
        
        ;exit prog    
        mov ah, 4ch
        int 21h
        
    main endp       
    
    printNewLine proc
        mov ah, 02h
        mov dl, 10
        int 21h
        
        mov ah, 02h
        mov dl, 13
        int 21h
        
        ret
    printNewLine endp
        
end main   
