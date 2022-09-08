;String Reversal

org 100h 
    lea si,str1
    lea di,str2
    mov cl,4h 
    add di,2h

here: 
    mov dl,[si]
    mov [di],dl 
    inc si
    dec di
    loop here

ret

;define variables
str1 db 'abcd$' 
str2 db 2 dup(?)