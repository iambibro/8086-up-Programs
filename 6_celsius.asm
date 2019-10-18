;//6_Farenhiet calculation
         
        name "celsius"
        org 100h
        jmp start
        tc db 10
        tf db 100
        result1 db  "result in farenheit"
        result2 db  "result in celcius"
        
  start:mov cl,tc
        mov al,09h
        imul cl   
        mov cl,05h
        idiv cl
        add al,20h
        mov result1,al
        mov bl,result1
        call print
        mov cl,tf
        sub cl,20h
        mov al,05h
        imul cl
        mov cl,09h
        idiv cl
        mov result2,al
        mov bl,result2
        call print
        mov ah,0
        int 16h
   ret    
   
   
      print proc
        pusha
        mov cx,08h
     p1:mov ah,02h
        mov dl,'0'
        test bl,10000000b
        jz zero
        mov dl,'1'
   zero:int 21h
        shl bl,1
        loop p1
        mov dl,'b'
        int 21h
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        popa
        ret
		