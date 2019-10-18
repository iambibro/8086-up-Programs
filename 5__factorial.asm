;//5. finding the factorial of any number between 0 & 5 :
        
        name "fact"
        org 100h  
        jmp start
        n db 5
start:  mov al,01h     
        mov cl,00h
        mov dl,n
next:   cmp cl,dl
        je done
        inc cl
        mul cl
        jmp next
done:   mov bl,al
        mov cx,08h
print:  mov ah,02h
        mov dl,'0'
        test bl,10000000b  
        jz zero
        mov dl ,'1'
zero:   int 21h
        shl bl,01h
        loop print
        mov dl,'b'
        int 21h
        mov al,0
        int 16h
                 
; add your code here

ret




