ORG 100h

; ===== DATOS =====
origen db "HOLA",0
destino db 13 dup(0)
msgCop db "Copiado: $"
crlf db 0Dh, 0Ah, "$"

; ===== CÓDIGO =====
start:

mov ax, cs
mov ds, ax
mov es, ax

mov si, origen
mov di, destino
mov cx, 13
cld

; ===== COPIA OPTIMIZADA =====
mov ax, cx
shr cx, 1
rep movsw

and ax, 1
jz fin
movsb

fin:

; ===== MOSTRAR =====
mov ah, 09h
mov dx, msgCop
int 21h

mov dx, destino
int 21h

mov dx, crlf
int 21h

; ===== SALIR =====
mov ah, 4Ch
xor al, al
int 21h