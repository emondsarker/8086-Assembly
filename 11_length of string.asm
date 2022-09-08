;counting number of characters in a string

org 100h
 
    lea si,string
    mov ax, 0000h
    
    here: 
        cmp [si],'$' ;check if end of string
        jz there ;jump if end 
        inc si
        add ax, 0001h ;count each char
        jmp here         
    
    there:
        LEA DX, ax
        add dx, '0'
        mov AH, 02H
        int 21h

ret
 
string DB "pewpew$"