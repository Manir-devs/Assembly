section .bss
  num1 resb 10
  num2 resb 10
  result resb 10
section .text
  global _start
_start:
  mov rax, 0
  mov rdi, 0
  mov rsi, num1
  mov rdx, 10
  syscall

  mov rax, 0
  mov rdi, 0
  mov rsi, num2
  mov rdx, 10
  syscall

  mov rax, byte [num1]
  sub rax, '0'
  mov rbx, byte [num2]
  sub rbx, '0'
  add rax, rbx
  add rax, '0'
  mov [result], al

  mov rax, 1
  mov rdi, 1
  mov rsi, result
  mov rdx, 1
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall
