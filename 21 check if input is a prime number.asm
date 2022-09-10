
;check if a input is a prime number

include emu8086.inc

org 100h

    Call pthis
    db 13,10,'enter a number to check:',0
    call scan_num
    
    mov al,cl
    mov bl,al
    mov dl,2h  
    
    here:
        mov ah,0h
        div dl
        mov al,bl
        cmp ah,0h
        jz printer
        inc dl
        jmp here
    
    printer:  
        cmp dl,bl
        jz there
        jnz overhere
    
    there:  
        Call pthis
        db 13,10,'prime',0
        jmp end
        
    overhere:  
        Call pthis
        db 13,10,'not prime',0
        jmp end

end:

hlt

DEFINE_PTHIS
DEFINE_GET_STRING
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_PRINT_NUM

;variables  
arr1 db 20 dup(?)  
arr2 db 20 dup(?)