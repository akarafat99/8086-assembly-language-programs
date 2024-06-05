.model small
.stack 100h
.data
    result dw ?
    
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ax, 00001h
        mov cx, 8
        
        loop1:
            mul cx
            loop loop1
        
        mov result, ax
     main endp
 
 end main
