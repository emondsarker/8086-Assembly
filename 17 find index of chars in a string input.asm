
;find index of char in a string input

include emu8086.inc

ORG 100

    CALL PTHIS
    db 13, 10, 'enter a string: ',0
    
    mov dx, 10
    CALL GET_STRING
    
    CALL PTHIS
    db 13, 10, 'enter a char: ',0
    mov ah, 01h
    int 21h
    
    mov bl, al ;store char in bl
    mov bh, 0
    
    CALL PTHIS
    db 13, 10, 'index of instances: ',0
    
    here:                          
        mov dl, [di]
        inc di
        inc bh  
        
        cmp bl, dl
        jz there
        
        cmp dl, 0
        jz over
        jmp here
    
    
    there:
    
        mov dl, bh
        sub dl, 1
        add dl, 30h
        mov ah, 02
        int 21h
        mov dl, 44
        int 21h
        
        jmp here
    
    over:
     


hlt
   
DEFINE_GET_STRING
DEFINE_PTHIS 
