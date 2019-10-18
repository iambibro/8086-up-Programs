;10// string byte compere      
      
        name "strcmp"
        org 100h
        jmp start
        
    x1: str1 db 'test string'
        str2 db 'best strings'
        
        size=($-x1)/2     
        
      start:cld
            mov ax,cs
            mov ds,ax
            mov es,ax
            
            
              lea SI,str1
              lea DI,str2
              mov cx,size
              
              repe cmpsb
              jnz not_equal
              
            
            mov al,'y'
            mov ah,0eh
            int 10h
            jmp exit
            
          not_equal:mov al,'n'
                    mov ah,0eh                    
                    int 10h
                    
                 exit:mov ah,0h
                      int 16h
                      ret
              