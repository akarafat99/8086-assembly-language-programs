;used 8bit numbers and 8bit & 16bit registers


.model small
.stack 100h
.data
    seriesStart dw 500
    seriesEnd dw 510
    result dw ?
    sumSaveToOffset dw 600
    
    
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        ;save number of odd series from seriesStart->500 to
        ;seriesEnd->510. That means 1, 3, 5, ... , 21
        mov si, seriesStart
        mov di, seriesEnd
        sub di, si
         
        mov ax, di
        mov bx, 2
        ;div bx
        
        ;mov di, ax
        inc di
        mov cx, di
        
        mov ax, 01
        loop1:
            mov [si], ax
            add ax, 2
            add si, 1
            loop loop1
        
        
        ;sum of numbers from offset seriesStart to
        ;seriesEnd
        mov ax, 0
        mov bx, seriesStart
        mov cx, di
        loop2:
            mov dx, [bx]
            add ax, [bx]
            
            add bx, 1            
            loop loop2  
        
        mov result, ax
                      
                      
        ;save sum to offset 600
        mov ax, result
        mov bx, sumSaveToOffset
        mov [bx], ax
        
        
     main endp
 
 end main

; need to customize according to start number to end number -> completed