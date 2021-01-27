section .text
global _ft_strcpy

_ft_strcpy:
xor rcx,rcx
_boucle:
cmp [rsi + rcx],byte 0x0
je _end
mov bl , [rsi + rcx]
mov [rdi +rcx], bl
inc rcx
jmp _boucle

_end:
     mov byte[rdi +rcx], 0x0
    mov rax, rdi
    ret
