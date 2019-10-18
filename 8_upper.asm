;//8_conversion to lower case to upper case: 

            name "lower_upper"
            org 100h
            jmp start
                 string db 20h,22h dup('?')
                 new_line db 0dh,0ah,'$' 
         
         start:lea dx,string
               mov ah,0ah
               int 21h
               
               mov bx,dx
               mov ah,00h
               mov al,ds:[bx+1]
               add bx,ax
               mov byte ptr[bx+2],'$'
               
               lea dx,new_line
               mov ah,09h
               lea bx,string
               mov ch,0h
               mov cl,[bx+1]
               jcxz null
               add bx,2
               
      upper_case:cmp byte ptr[bx],'a'
                jb ok                            
                cmp byte ptr[bx],'z'
                ja ok
                and byte ptr[bx],11011111b
                
             ok:inc bx
                loop upper_case
                
                
                lea dx,string+2
                mov ah,09h
                int 21h
                
                mov ah,0
                int 16h
                
            null:ret
  