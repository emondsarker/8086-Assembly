
;Find if two strings are the same

include 'emu8086.inc'

ORG    100h

    LEA    SI, msg1        
                         
    CALL   print_string   
    
    LEA    DI, buffer     
    MOV    DX, bufSize    
    CALL   get_string      
    
    lea si,buffer   
    
    GOTOXY 0,1
    LEA    SI, msg2       
     
                         
    CALL   print_string   
    
    LEA    DI, buffer2     
    MOV    DX, bufSize2    
    CALL   get_string       
    
    lea di,buffer2  
    
    
    lea si,buffer 
    mov cx,0
    
    countno:     
        inc cx 
        mov ax,[si]
        inc si
        cmp ax,0h;  
        
        jnz countno   
          
    lea di,buffer2       
    mov bx,0
    
    countno2:     
        inc bx 
        mov ax,[di]
        inc di
        cmp ax,0h
          
        jnz countno2 
    
    dec cx
    
    lea di,buffer2  
       
    lea si,buffer 
    
    loopin:  
        mov al,[di]  
        mov bl,[si]
        cmp  bl,al
        jc printl
        cmp al,bl
        jc printlp
        
        jz loop1      
        jnz printno 
        
    loop1:
        inc si
        inc di
        loop loopin
        
        jmp printyes
    
    printno:             
        call pthis 
        DB 13, 10
        db "Not the same", 0  
        
        jmp done  
          
    printyes:
        call pthis
        DB 13, 10
        db "They are the same", 0 
        
        jmp done
    
    
    printl:  
        lea si,buffer2      
        GOTOXY 0,3
        CALL   print_string 
        jmp done 
                      
    
    
    printlp:  
      
        lea si,buffer  
        GOTOXY 0,3
        CALL   print_string  
                  


done:

RET                                

; data
msg1   DB "Enter string: ", 0  
msg2   DB "Enter string2: ", 0  
buffer DB 20 DUP (0)      
buffer2 DB 20 DUP (0)  

 
bufSize = $-buffer    
 
bufSize2 = $-buffer2 
DEFINE_GET_STRING    
DEFINE_PTHIS
DEFINE_PRINT_STRING
END