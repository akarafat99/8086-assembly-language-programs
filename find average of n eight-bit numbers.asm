.model small
.stack 100
.data
    num dw 5
    numbers db 10, 20, 30, 40, 50  
    result dw ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov cx, num
        mov ax, 0
        mov si, offset numbers
        
        loop1:
            add al, [si]
            inc si
            loop loop1
        
        mov bx, num
        div bx
        
        mov result, ax
    main endp

end main
