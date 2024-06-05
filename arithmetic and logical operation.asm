.model small
.stack 100h

.data
    num1 dw 10
    num2 dw 2
    result dw ?
    
    addition dw ?
    subtraction dw ?
    multiplication dw ?
    division dw ?

    andRes dw ?
    orRes dw ?
    xorRes dw ?
    notRes dw ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;arithmetic operation - add, sub, mul, div
    
    ;addition
    mov ax, num1
    mov bx, num2
    
    add ax, bx
    mov result, ax 
    mov addition, ax
    
    ;subtract
    mov ax, num1
    mov bx, num2
    
    sub ax, bx
    mov result, ax 
    mov subtraction, ax
    
    ;multiplication
    mov ax, num1
    mov bx, num2
    
    mul bx
    mov result, ax 
    mov multiplication, ax
    
    ;division
    mov ax, num1
    mov bx, num2
    
    div bx
    mov result, ax
    mov division, ax 
    
    
    ;logical operation - and, or, xor, not 
    
    ;and
    mov ax, num1
    mov bx, num2
    
    and ax, bx
    mov result, ax
    mov andRes, ax
    
    ;or
    mov ax, num1
    mov bx, num2
    
    or ax, bx
    mov result, ax 
    mov orRes, ax
    
    ;xor
    mov ax, num1
    mov bx, num2
    
    xor ax, bx
    mov result, ax 
    mov xorRes, ax
    
    ;not
    mov ax, num1
    
    not ax
    mov result, ax  
    mov notRes, ax
    
    
    
    ; Terminate program
    mov ah, 4ch
    int 21h

main endp

end main
