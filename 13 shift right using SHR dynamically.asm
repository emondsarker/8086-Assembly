
;shift right dynamically

include emu8086.inc 

org 100h
    
    ;take input
    call pthis
    db 13,10, 'Enter no: ',0
    call scan_num  
    
    mov ax,cx
    
    ;take input for shift right
    call pthis
    db 13,10, 'shift by?:  ',0
    call scan_num  
    
    shr ax,cl ;shift right
    
    
    call pthis
    db 13,10, 'answer:  ',0  
    
    call print_num_uns

ret 

DEFINE_PTHIS
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM_UNS 