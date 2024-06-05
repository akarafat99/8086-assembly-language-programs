.model small
.stack 100
.data  
    number dw 01234h 
    
    location1 dw 3000   
    
    result dw ?
    
.code  

    main proc
        mov ax, @data
        mov ds, ax  
        
        ;save 16bit-number in 
        ;location1 and location1 +2
        call procedure1
        
        ;rotating number
        mov ax, 0
        mov si, location1
        mov cx, 0004
        
        mov al, [si]
        rol al, 4 
        inc si 
        mov ah, [si] 
        rol ah, 4 
        
        mov si, location1
        mov [si], ah
        inc si
        mov [si], al
        
        mov si, location1
        mov al, [si]
        inc si
        mov ah, [si]
        
        mov result, ax
        
        
        ;ending program    
        mov ah, 4ch
        int 21h
        
    main endp  
    
    procedure1 proc
        mov si, location1
        mov dx, number
        mov [si], dx
        ret
    procedure1 endp
        
    
end main  
 

;Incompleted
;Need debug