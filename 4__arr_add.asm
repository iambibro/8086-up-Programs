;//4. finding the sum of n numbers :      
       
        name "arr_sum"
        org 100H
        vector db 5,4,3,2,17
        mov cx,05H
        mov al,00H
        mov bx,00H
    next:add al,vector [bx]
         inc bx
         loop next
         mov bl,al
         
          mov cx,08H
    print:mov ah,02H
         mov dl,'0'
         test bl,10000000B
         jz zero
         mov dl,'1'
     zero:int 21H
         shl bl,01H
         loop print
         
         mov dl,'b'
         int 21H
         mov al,0   
           
      
         int 16H
         ret