;Invert an array then
;store it in another array
;WITHOUT using loops

ORG 100H
    
    ;use register al to swap
    
    mov al, array[4]
    mov array2[0], al
    
    mov al, array[3]
    mov array2[1], al
    
    mov al, array[2]
    mov array2[2], al
    
    mov al, array[1]
    mov array2[3], al
    
    mov al, array[0]
    mov array2[4], al

RET

;variables

array1 DB 1H, 2H, 3H, 4H, 5H
array2 DB 5 DUP(?)