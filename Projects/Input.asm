section .bss
    buffer resb 100

section .text
    global _start

_start:
    ; read input
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 100
    syscall

    ; write output
    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    syscall

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
