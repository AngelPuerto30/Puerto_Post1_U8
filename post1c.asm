ORG 100h

section .data
 cadena db "Arquitectura de Computadores",0
 longCad equ 29
 msgHall db "Hallado en posicion: $"
 msgNoH db "No encontrado.$"
 crlf db 0Dh,0Ah,"$"

section .text
start:

 mov ax, ds
 mov es, ax

 mov di, cadena
 mov al, "d"
 mov cx, longCad
 cld
 repne scasb

 jne .noHallado

 mov bx, di
 sub bx, cadena
 dec bx

 mov ah, 09h
 mov dx, msgHall
 int 21h

 mov dl, bl
 add dl, 30h
 mov ah, 02h
 int 21h

 mov ah, 09h
 mov dx, crlf
 int 21h
 jmp .fin

.noHallado:
 mov ah, 09h
 mov dx, msgNoH
 int 21h

.fin:
 mov ah, 4Ch
 xor al, al
 int 21h