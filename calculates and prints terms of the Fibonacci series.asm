.model small
.stack 100h
.data
    var1 db 1
    var2 db 1
    var3 dw ?

.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov cx, 9  
               
         
        ; print 1st two fibonacci
        mov bh, 0
        mov bl, 1
        call print
        call spacePrint
        call print
        call spacePrint
        
        ;print next 9 fibonacci series
        loop1:
            mov al, var1
            mov bl, var2
            mov var2, al
            add al, bl
            
            mov var1, al           
            
            aam
            
            mov bx, ax
            call print
            call spacePrint 
            
            loop loop1
        
        ;exit prog    
        mov ah, 4ch
        int 21h
        
    main endp       
    
    print proc 
            mov ah, 02h
            
            mov dl, bh
            add dl, 30h
            int 21h
            mov dl, bl
            add dl, 30h
            int 21h
            
            ret
     print endp
    
    spacePrint proc
        mov ah, 02h
        mov dl, ' '
        int 21h  
        ret
    spacePrint endp
        
end main 
