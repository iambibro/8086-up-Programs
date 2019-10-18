; This program checks if a string is a palindrome or not
;plindrome is text that can be read backwords and give the same meaning as if it was read forward

        
        
        name "pali"
        org 100h
        jmp start     
        
        msg1 db "!!! This is palindrome !!!$"
        msg2 db "!!!! This is not a palindrome !!!!$"
        
m1:     s db 'able was ere ere saaw elba'  

        s_size=$-m1 
        
        db 0dh, 0ah, '$'
        
start:  mov ah,09h
        mov dx, offset s
        int 21h
        ;Display the Input
        
        lea di,s
        mov si,di
        add si,s_size
        dec si
        mov cx,s_size
        cmp cx,01h
        je is_palindrome
        shr cx,01h
        
next_char:  mov al,[di]
            mov bl,[si]
            cmp al ,bl
            jne not_palindrome
            inc di
            dec si
            loop next_char
            
is_palindrome:  mov ah,09h
                mov dx,offset msg1
                int 21h
                jmp stop
                
not_palindrome: mov ah,09h
                mov dx,offset msg2
                int 21h
                
stop:           mov ah,00h
                int 16h
                ret 
