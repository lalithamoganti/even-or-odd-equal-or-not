  ORG 100h

start:
    mov ah, 09h
    mov dx,offset input_msg
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al

    mov ah, 00h
    mov al, bl
    mov cl, 02h
    div cl

    cmp ah, 00h
    je even

odd:
    mov ah, 09h
   mov  dx,offset odd_msg
    int 21h
    jmp done

even:
    mov ah, 09h
    mov dx, offset even_msg
    int 21h

done:
    mov ah, 4Ch
    int 21h

input_msg db 'Enter a single-digit number: $'
even_msg db 0Dh, 0Ah, 'The number is even.$'
odd_msg db 0Dh, 0Ah, 'The number is odd.$'