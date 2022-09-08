
;Simple demo of a proc call
;in 8086 Assembly

ORG    100h 
 
    MOV    AL, 1 
    MOV    BL, 2 
    
    ;Call Procedure 
    CALL   m2 
    CALL   m2 
    CALL   m2 
    CALL   m2 
 
RET                    
 
    m2 PROC ;define proc
        
        ; AX = AL * BL.
        ; return to caller. 
        MUL    BL              
        RET
                            
    m2 ENDP ;end proc 
 
END 