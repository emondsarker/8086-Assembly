
;Write a program that will count 
;the number of characters in a string

ORG 100H

start:
    lea bx, string
    mov ax, 0
    
compare:
    cmp [bx], '$'
    jz printer
    inc ax
    inc bx
    jmp compare
    
printer:
    mov ah, 02
    mov dx, ax
    add dl, '0'
    int 21h
    
ret

string DB 'ObiWan$' 