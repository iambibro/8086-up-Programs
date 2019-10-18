;//1. addition and substraction :

        name "add_sub"
        org 100h
        mov al,10H
        mov bl,15h
        add bl,al
        sub bl,01h
        
        mov cx,08h
print:  mov ah,02h
        mov dl,'0'
        test bl,10000000b
        jz zero
        mov dl,'1'
  zero: int 21H
        shl bl,01h
        loop print
        
        mov dl,'b'
        int 21h
        mov al,0
        int 16h
        ret