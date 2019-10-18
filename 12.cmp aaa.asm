;12//demo of aaa

        name "cmpsw"
        org 100h
        mov ah,04h
        mov al,09h
        add al,ah
        xor ah,ah
        aaa
        mov dx,ax
        mov ah,0eh
        
        
        or dh,30h
        mov al,dh
        int 10h
        
        or dl,30h
        mov al,dl
        int 10h
        
        mov ah,0
        int 16h
        ret
     