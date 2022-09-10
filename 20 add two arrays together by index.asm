;add 2 arrays together
; 1 2 3 4 5
;+5 4 3 2 1
;=6 6 6 6 6 

include emu8086.inc

ORG 100h

    CALL PTHIS
    db 13, 10, 'enter first 5 numbers: ',0
    
    mov bl, 6 ;size of array
    mov bh, 1
    lea si, array1
    
    loop1:
        dec bl
        inc bh
        GOTOXY 0, bh
        CALL SCAN_NUM
        mov [si], cx
        inc si
        mov cl, bl
        loop loop1
    
    
    CALL PTHIS
    db 13, 10, 'enter second 5 numbers: ',0
    
    mov bl, 6 ;size of array
    inc bh
    lea si, array2
    
    loop2:
        dec bl
        inc bh
        GOTOXY 0, bh
        CALL SCAN_NUM
        mov [si], cx
        inc si
        mov cl, bl
        loop loop2
    
    lea si, array1
    lea di, array2
    
    mov cl, 5
    
    inc bh
    GOTOXY 0, bh
    
    CALL PTHIS
    db 13, 10, 'array after add: ',0
    
    loop3:
        mov al, 00h
        add al, [si]
        add al, [di]
        inc si
        inc di
        
        mov ah, 00h
        CALL PRINT_NUM
        
        mov ah, 02h
        mov dl, 44
        int 21h
        mov dl, 32
        int 21h
        
        loop loop3



DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_GET_STRING
DEFINE_PTHIS


hlt  

;variable

array1 db 0h,0h,0h,0h,0h
array2 db 0h,0h,0h,0h,0h