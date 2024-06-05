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

.code
main proc
    mov ax, @data
    mov ds, ax

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
    
    ; Terminate program
    mov ah, 4ch   
    int 21h

main endp

end main
