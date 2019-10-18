;//3.counting the numbers in a given string :
 
    name "counter"
    org 100H
    JMP start
    str DB 'abcdefg hijklmnop qrstuvwxyz',0
start:LEA BX,str                             
    mov AX,0
compare:cmp [BX],0
    JE done
    INC AX
    INC BX
    JMP compare
done:MOV BX,AX


    MOV CX,08
print:MOV AH,2
      MOV Dl,'0'
    TEST BL,10000000B
    JZ zero
    MOV DL,'1'
zero:INT 21H
     SHL BL,01H
     LOOP print
     MOV DL,'B'
     INT 21H
     MOV AL,0
     INT 16H
     RET
 