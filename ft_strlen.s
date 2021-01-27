
section .text
global _ft_strlen

_ft_strlen:
mov r8 , rdi
xor rcx,rcx
_loop:
mov al,  [r8+ rcx]
cmp al , 0x0
je _end
inc rcx
jmp _loop

_end:
    mov rax, rcx
    ret