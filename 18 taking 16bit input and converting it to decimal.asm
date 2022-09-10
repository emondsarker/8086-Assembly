
;Enter a 16 digit binary
;Convert it to decimal
;then output it to the console

include emu8086.inc

ORG 100h

    CALL PTHIS
    db 13, 10, 'enter a string: ',0
    mov dx, 17
    CALL GET_STRING
    
    
    mov cx, 16
    
    here:                          
        mov dl, [di]
        inc di  
        
        cmp dl, 31h
        jz there 
        
    continue:
    
        cmp dl, 0
        jz over        
        loop here
    
    
    there:
        mov bx, 1
        shl bx, cl
        add ax, bx
        
    
    jmp continue:
    
    over:
    
        CALL PTHIS
        db 13, 10, 'decimal: ',0
        
        sub ax, 1
        shr ax, 1
        
        
        CALL PRINT_NUM



DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_GET_STRING
DEFINE_PTHIS


end