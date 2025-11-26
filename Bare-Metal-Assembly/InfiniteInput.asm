org 0x7C00
start:
    call input
    call printer
    jmp start
input:
    mov ah, 0
    int 0x16
    cmp al, 0x08
    je backspace
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