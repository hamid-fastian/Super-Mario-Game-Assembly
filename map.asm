MAP_W equ 60
MAP_H equ 12

EMPTY    equ 0
GROUND   equ 1
BRICK    equ 2
QUESTION equ 3
PIPE     equ 4

levelMap: times MAP_W * MAP_H db EMPTY


InitMap:
    mov si, 600
    mov cx, 60

makeGround:
    mov byte [levelMap + si], GROUND
    inc si
    dec cx
    jnz makeGround

    mov ax, 8
    mov bx, 8
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 9
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 10
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 11
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 12
    mov dl, QUESTION
    call SetTile

    mov ax, 8
    mov bx, 13
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 14
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 15
    mov dl, BRICK
    call SetTile

    mov ax, 7
    mov bx, 25
    mov dl, BRICK
    call SetTile

    mov ax, 7
    mov bx, 26
    mov dl, BRICK
    call SetTile

    mov ax, 7
    mov bx, 27
    mov dl, BRICK
    call SetTile

    mov ax, 7
    mov bx, 28
    mov dl, BRICK
    call SetTile

    mov ax, 7
    mov bx, 29
    mov dl, BRICK
    call SetTile

    mov ax, 8
    mov bx, 45
    mov dl, PIPE
    call SetTile

    mov ax, 8
    mov bx, 46
    mov dl, PIPE
    call SetTile

    mov ax, 8
    mov bx, 47
    mov dl, PIPE
    call SetTile

    mov ax, 9
    mov bx, 45
    mov dl, PIPE
    call SetTile

    mov ax, 9
    mov bx, 46
    mov dl, PIPE
    call SetTile

    mov ax, 9
    mov bx, 47
    mov dl, PIPE
    call SetTile

    mov ax, 10
    mov bx, 45
    mov dl, PIPE
    call SetTile

    mov ax, 10
    mov bx, 46
    mov dl, PIPE
    call SetTile

    mov ax, 10
    mov bx, 47
    mov dl, PIPE
    call SetTile

    ret


GetTile:

    push bx
    push dx
    push si

    cmp ax, MAP_H
    jae .invalid

    cmp bx, MAP_W
    jae .invalid

    mov dx, MAP_W
    mul dx

    add ax, bx

    mov si, ax
    mov al, [levelMap + si]

    jmp .finish

.invalid:
    mov al, EMPTY

.finish:
    pop si
    pop dx
    pop bx

    ret

SetTile:

    push bx
    push cx
    push dx
    push si

    cmp ax, MAP_H
    jae .finish

    cmp bx, MAP_W
    jae .finish

    mov cl, dl

    mov dx, MAP_W
    mul dx

    add ax, bx

    mov si, ax
    mov [levelMap + si], cl

.finish:
    pop si
    pop dx
    pop cx
    pop bx

    ret
