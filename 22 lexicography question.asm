include 'emu8086.inc'
ORG    100h

LEA    SI, msg1       ; set up pointer (SI) to msg
 
                     ; to ask for the number
CALL   print_string   ; print message that SI points to

LEA    DI, buffer     ; set up pointer (DI) to input buffer
MOV    DX, bufSize    ; set size of buffer
CALL   get_string     ; get name & put in buffer  

lea si,buffer   

GOTOXY 0,1
LEA    SI, msg2       ; set up pointer (SI) to msg
 
                     ; to ask for the number
CALL   print_string   ; print message that SI points to

LEA    DI, buffer2     ; set up pointer (DI) to input buffer
MOV    DX, bufSize2    ; set size of buffer
CALL   get_string     ; get name & put in buffer  

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
cmp ax,0h;  
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
loop1:inc si
inc di
loop loopin
jmp printyes

printno:        
         
call pthis 
 DB 13, 10
  db "No", 0  
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
                  


done:RET                                ; return to operating system.

; data
msg1   DB "Enter string: ", 0  
msg2   DB "Enter string2: ", 0  
buffer DB 20 DUP (0)  ; input buffer for get_string    
buffer2 DB 20 DUP (0)  ; input buffer for get_string

 
bufSize = $-buffer    ; calculates size of buffer
 
bufSize2 = $-buffer2 
DEFINE_GET_STRING    
DEFINE_PTHIS
DEFINE_PRINT_STRING
END