.model small
.stack 100h

.data 
    str db "level", 0
    len equ $-str
    p db "Palindrome$"
    nP db "Not palindrome$"
    
.code
    main proc
        mov ax, @data
        mov ds, ax 
        
        mov si, offset str
        lea di, [si + len - 2]
        
        loop1:
            cmp si, di
            jge yes
            
            mov al, [si]
            mov bl, [di]
            cmp al, bl
            
            jne no
            
            inc si
            dec di
            jmp loop1
        
        yes:
            mov ah, 09h
            mov dx, offset p
            int 21h
            jmp terminate
        no:
            mov ah, 09h
            mov dx, offset nP
            int 21h
            jmp terminate
        
        terminate:
            mov ah, 4ch
            int 21h
        
    main endp

end main
