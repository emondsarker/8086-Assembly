
;take in array of inputs
;output the largest value in the array

include emu8086.inc

ORG 100h

    CALL PTHIS
    db 13, 10, 'enter an array of numbers to find max: ',0
    
    mov bl, 2
    
    here:
        CALL SCAN_NUM
        GOTOXY 0, bl
        inc bl
        cmp CX, 0
        jz end:
        
        cmp AX, CX
        jc cont
        jmp here
    
    cont:
        mov AX, CX
        jmp here
    
    
    end:
        CALL PTHIS
        db 13, 10, 'max: ',0
        CALL PRINT_NUM_UNS


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_GET_STRING
DEFINE_PTHIS


end