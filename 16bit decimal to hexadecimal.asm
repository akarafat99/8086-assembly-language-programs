.model small
.stack 1000h
.data  
    number dw 10 
    
    location1 dw 3000   
    
    result db 0, 0, 0, 0
    
    d1 db ?
    d2 db ?
    d3 db ?
    d4 db ?
     
    n1 dw ?
    n2 db ?
    
    msg db "hello$"
    
.code  

    main proc
        mov ax, @data
        mov ds, ax  
        
        mov ax, number
        mov bx, 16
        mov cx, 4
        mov si, 3
        
        ;calculating 2 MSB of hex-d number
        loop1:
        cmp ah, 0
        je goto1
        gotoEx1:
        div bx
        mov result[si], dl
        dec si
        mov dl, 0
        loop loop1
        
        ;calculating 2LSB of hex-d number        
        goto1:
        
        mov ah, 0
        mov bl, 16
        div bl
        
        mov result[si], ah
        dec si
        mov result[si], al 
        
        ;printing 4hex-d digit
        mov si, 0
        mov cx, 4
        
        loop2:
        mov dl, result[si]
        inc si
        mov n2, dl
        
        cmp dl, 9
        jle goto2
        add dl, 55
        jmp goto3
        
        goto2:
        add dl, 48
        
        goto3:
        mov ah, 02h
        int 21h
        
        loop loop2
        
        
        ;ending program    
        mov ah, 4ch
        int 21h
        
    main endp  
   
end main 
