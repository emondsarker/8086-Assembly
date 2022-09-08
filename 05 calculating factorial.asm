;Taking an Input, calculating
;factorial and outputing it

;output can only handle number <10 

include emu8086.inc

ORG 100h

    MOV AH, 01H;
    int 21h;
    
    ;convert to number
    SUB AL, 30H        
    MOV CL, AL
    MOV AL, 1H

HERE:
    MUL CL ;stores in AL
    LOOP HERE
    
    MOV DL, AL
    ;convert to ascii
    ADD DL, 30H
    
    GOTOXY 0,2
    ;output to terminal
    MOV AH, 2H
    int 21h

RET

