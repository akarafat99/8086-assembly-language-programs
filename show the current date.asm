.model small
.stack 100h
.data
    var1 db ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        ;day
        mov ah, 2ah
        int 21h
        
        mov al, dl
        aam
        mov bx, ax
        call printer
        call printSlash
        
        ;month
        mov ah, 2ah
        int 21h
        
        mov al, dh
        aam
        mov bx, ax
        call printer
        call printSlash
        
        ;print 20 of year
        mov al, 20
        aam
        mov bx, ax
        call printer
        
        ;print last 2 digit of year
        mov ah, 2ah
        int 21h
        
        mov ax, cx
        add ax, 0f830h
        aam
        mov bx, ax
        call printer  
        
        ;exit prog
        mov ah, 4ch
        int 21h
    main endp
        
        ;printer
        printer proc
            mov dl, bh
            add dl, 30h
            mov ah, 02h
            int 21h
            mov dl, bl
            add dl, 30h
            int 21h
            ret
        printer endp
        
        ;printSlash
        printSlash proc
            mov dl, '/'
            mov ah, 02h
            int 21h
            ret
        printSlash endp
        
 end main
