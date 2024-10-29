 org 100h

mov dx, offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bh,al

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h

mov ch,al

cmp ch,bh

je equal

mov dx,offset not_equal
mov ah,09h
int 21h

jmp endprogram

equal:
mov dx,offset msg_equal
mov ah,09h
int 21h

msg1 db 'Enter number 1:$'
msg2 db 0ah,0dh,'Enter number 2:$'
msg_equal db 0ah,0dh,'The two numbers are equal$'
not_equal db 0ah,0dh,'The two numbers are not equal$'     

endprogram:
mov ah,4Ch
int 21h