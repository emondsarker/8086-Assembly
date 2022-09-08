;couting number of "e" with JNZ

org 100h 

    lea si, string
    mov cx, 8h
    mov ax, 0h

here: 

    cmp [si],'e'
    jnz there
    add ax, 1

there:
    inc si

loop here

ret 

string DB "exercise$"