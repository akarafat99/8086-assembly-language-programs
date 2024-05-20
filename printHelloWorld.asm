org 100h

mov ah, 09h  ; function to display string msg
mov dx, offset message  ; offset of message string     

int 21h       ; DOS interrupt
mov ah, 4ch   ; funcr terminate
int 21h
ENDP

message db "Hello World$"

end main

ret
