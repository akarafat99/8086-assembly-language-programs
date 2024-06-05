
.model small
.stack 100h
.data
    num1 dw 12
    num2 dw 5
    ans dw ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ax, num1
        mov bx, num2
        
        block1:
        cmp ax, bx
        je block3
        jb swapnumber
        
        block2:
        mov dx, 0
        div bx
        cmp dx, 0
        je block3
        mov ax, dx
        jmp block1
        
        
        swapnumber:
        xchg ax, bx
        jmp block2
        
        block3:
        mov ans, bx
        mov ah, 4ch
        int 21h
        
     main endp
 
 end main
