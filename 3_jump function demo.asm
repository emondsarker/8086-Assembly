
;Jump function demo

ORG 100H  
 
jmp adder ;goes to adder  

;this runs second 
printer: 
    mov ah,2 
    mov dl,al 
    add dl,'0' 
    int 21h
    ;jump to finish 
    jmp finish 
 
;this runs first 
adder: 
    mov al,2 
    mov bl,2 
    add al,bl 
    jmp printer 
 
finish: 
 
ret  