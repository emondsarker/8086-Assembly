;Printing out String

ORG 100h
    
    LEA DX, string
    mov AH, 09H
    int 21h

RET   

string DB "Gotta Catch em all$"

