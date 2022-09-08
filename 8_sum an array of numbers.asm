;Sum of array of numbers 

org 100h 

    lea si, array
    mov cx, 5h ;length of array
    mov ax, 0h

here: 
    nop
    add al, [si]
    inc si
    inc si
    
    loop here

ret 

;variable
array dw 1, 2, 2, 2, 2