;//2. displaying the text hello world :

      name "hello"
      org 100h
      JMP START
  MSG:DB "HELLO WORLD",0DH,0AH,24H
START:MOV DX,MSG
      MOV AH,09H
      INT 21H
      MOV AH,0
      INT 16H
      RET