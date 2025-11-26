org 0x7C00

;--------------------------------------------------

    call clearscreen

;--------------------------------------------------

start:
    call input
    call printer
    jmp start

;-------------------------------------------------

input:
    mov ah, 0
    int 0x16
    cmp al, 0x08
    je backspace
    ret
clearscreen:
    mov ah,0x06
    mov al, 0
    mov bh, 0xF0        ;Background white, with black text.
    mov cx, 0x0000
    mov dx, 0x184f
    int 0x10
    mov ah, 0x02
    mov bh, 0
    mov dh, 0
    mov dl, 0
    int 0x10
    ret
printer:
    mov ah, 0x0E
    int 0x10
    ret
backspace:
    mov al, 0x08
    call printer
    mov al, ' '
    call printer
    mov al, 0x08
    ret

times 510-($-$$) db 0
dw 0xAA55