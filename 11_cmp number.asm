;11. demo of coompsw  
  
    name "cmpsw"
    org 100h
    jmp start
      x1:data1 dw 1234h,5678h,9012h,3456h
         data2 dw 1234h,5678h,9012h,3456h
         
         size=($-x1)/4
         
start:cld
      mov ax,cs
      mov ds,ax
      mov es,ax
      
        lea si,data1
        lea di,data2
        mov cx,size
        
        repe cmpsw
        jnz not_equal
        mov al,'Y'
        mov ah,0eh
        int 10h
        jmp exit
        
        
not_equal:mov al,'N'
          mov ah,0eh
          int 10h
      
      exit:mov ah,0
           int 16h
           ret