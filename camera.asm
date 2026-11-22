SCREEN_W equ 320
WORLD_W	equ 960
CAM_MAX	equ 640	
cameraX: dw 0
testMarioX: dw 0

InitCamera:
    mov word [cameraX], 0
    ret

UpdateCamera:
    mov ax, [testMarioX]
    cmp ax, 160
    jbe reset

    sub ax, 160
    cmp ax, CAM_MAX
    ja maxCam

    mov [cameraX], ax
    ret

reset:
    mov word [cameraX], 0
    ret

maxCam:
    mov word [cameraX], CAM_MAX
    ret

WorldToScreen:
    sub ax, [cameraX]
    ret
