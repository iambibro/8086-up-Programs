;13_//palindrome program

    name "pali"
    org 100h
    jmp start
msg1: db "This is Palindrome $"
msg2: db "This is not Palindrome $"
;m1 : s db "abb"
m1  : s db "able was ere ere saw elba"
s_size=$-m1
db 00h,0ah,'$'

start: mov ah,09h
       mov dx,offset s
       int 21h        
       lea di,s
       add si,di
       add si,s_size  
       dec si
       mov cx,s_size
       cmp cx,01h
       jc is_palindrome
       shr cx,01h
next_char:mov al,[di]
          mov bl,[si]
          cmp al,bl
          jnc not_palindrome
          inc di
          dec si
          loop next_char
is_palindrome:mov ah,09h
              mov dx,offset msg1
              int 21h
              jmp stop
not_palindrome:mov ah,09h
               mov dx,offset msg2
               int 21h
       stop:   mov ah,0h
               int 16h
               ret
       
                                   