;String concatenation

org 100h
 
    lea si,string1 ;load string1 in si
    lea di,string3 ;load string3 in di
    
    mov cl,4h ;length of string 
    
    here: 
        mov dl,[si]
        mov [di],dl ;add to string3 
        inc si
        inc di
        loop here
             
    lea si,string2 ;load string2 in si         
    mov cl,8h 
    
    there: 
        mov dl,[si]
        mov [di],dl ;add to string3 
        inc si
        inc di
        loop there 
    
    LEA DX, string3
    mov AH, 09H
    int 21h

ret
 
;variables
string1 DB "Dubb$" 
string2 DB "Hubb$"
string3 DB 12 DUP('?'),"$"