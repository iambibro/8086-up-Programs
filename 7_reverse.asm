;//7_reversing a string

        name "reverse"
        org 100h

; add your code here 
        jmp start
        string:db '!gmirts a si siht $'
        start:lea bx,string
        mov si,bx
        next_byte:cmp [si],'$'
        je end     
        inc si
        jmp next_byte 
        end:dec si
        do_reverse:cmp bx,si
        jae done
        mov al,[bx]
        mov ah,[si]
        mov [si],al
        mov [bx],ah
        inc bx
        dec si
        jmp do_reverse 
        done: lea dx,string
        mov ah,09h
        int 21h
        mov ah,00h
        int 16h
        ret




