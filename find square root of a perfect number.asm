;Write a program to find the square root of a perfect number where starting address for 
;code is 2000 and number is stored at 3000 memory address and store result 
;into 3002 memory address. 

.model small
.stack 100
.data  
    number dw 81
    location1 dw 3000   
    result dw ?
    
.code  

    ;as the number saved in address 3000
    ;start program from 2000 will 
    ;cause extra memory usage which is unnecessary
    
    main proc
        mov ax, @data
        mov ds, ax
        
        ;save number to address 3000
        call process1 
        
        ;finding square root of number 
        ;saved in address location1
        mov ax, 0
        mov si, location1
        mov bx, [si]
        mov si, 0
        
        loop1:
            mov ax, si
            mul ax
            cmp ax, bx
            je endLoop1
            inc si
            jmp loop1
        
        endLoop1:  
            mov result, si 
        
        ;saving the result to address 3002    
        call process2
            
        mov ah, 4ch
        int 21h
        
    main endp 
     
     
    process1 proc 
        
        mov si, location1
        mov dx, number
        mov [si], dx  
        ret
    process1 endp   
    
    process2 proc
        
        mov si, location1
        add si, 2
        mov dx, result
        mov [si], dx
        ret
        
    process2 endp
    
    
end main
