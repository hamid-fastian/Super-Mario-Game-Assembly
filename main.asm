[org 100h]

jmp start

%include "map.asm"

start:

    call InitMap

    mov ax, 8
    mov bx, 12
    call GetTile

    mov ax, 0x4c00
    int 21h
