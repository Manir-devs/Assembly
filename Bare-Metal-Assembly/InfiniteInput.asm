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
    call cursorpos
    cmp al, 0x08
    je backspace
    cmp al, 0x0D
    je newline
    ret
cursorpos:
    mov ah, 0x03
    mov bh, 0
    int 0x10            ;DH = row, DL = col
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
    cmp dl, 0
    je backspacepro
    mov al, 0x08
    call printer
    mov al, ' '
    call printer
    mov al, 0x08
    ret
backspacepro:
    cmp dh, 0
    je .done
    dec dh
    mov dl, 79
    mov ah, 0x02
    mov bh, 0
    int 0x10
    ret
.done:
    ret
newline:
    mov al, 0x0D
    call printer
    mov al, 0x0A
    ret

times 510-($-$$) db 0
dw 0xAA55