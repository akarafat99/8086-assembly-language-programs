.MODEL SMALL

.STACK 100H

.DATA

    str DB "Hello World!$"

.CODE

    start:
        
        MAIN PROC
            
            MOV AX, @DATA
            MOV DS, AX
            
            MOV AH, 0EH
            MOV SI, OFFSET str
            
            loop:
                MOV AL, [SI]
                CMP AL, 0
                JE done
                INT 10H
                INC SI
                JMP loop
            done:
                MOV AH, 4CH
                INT 21H
        
        MAIN ENDP
    
    
    END start
