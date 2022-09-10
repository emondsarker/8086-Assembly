
;String reversal with stack

include emu8086.inc

ORG 100

    CALL PTHIS
    db 13, 10, 'Enter a String: ', 0
                             
    here:
        mov ah, 01h
        inc cl
        int 21h
        mov ah, 00h
        push ax
        cmp al, 13
        jz out1
       
        jmp here
    
        mov bl, cl
    
    out1:
    
        ;compare if string is 0
        
        cmp cl, 01h
        jnz out2
        
        CALL PTHIS
        db 13, 10, 'Emptry String Entered: ', 0
        jmp exit
    
    out2:
    
        CALL PTHIS
        db 13, 10, 'Reversed String: ', 0
        
        GOTOXY 0,4
    
    there:
        pop dx
        mov ah, 02h
        int 21h
       
    LOOP there
    
    exit:
   
hlt

DEFINE_PTHIS
