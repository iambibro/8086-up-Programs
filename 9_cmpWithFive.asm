;9// stringb operation //compare with 5            
            
            name "cmpwithfive"
            org 100h 
            
              jmp start
            
            msg db "Enter a  number or any other char to exicute:$"
            equal_5 db "is five!",0dh,0ah,"$"
            below_5 db "is below five ",0dh,0ah,"$"
            above_5 db "is above five ",0dh,0ah,"$"
              
            
       start:                             
            game:mov dx,offset msg
                mov ah,09h
                int 21h
                
                mov ah,01h
                int 21h
                cmp al,'0'
                jb stop   
                
                cmp al,'9'
                ja stop
                
                cmp al,'5'
                jb below
                ja above
                
                mov dx,offset equal_5
                jmp print
                
              below:mov dx,offset below_5
                    jmp print
                  
               above:mov dx,offset above_5
                    
                print:mov ah,09h
                      int 21h
                      jmp game
                  stop:ret