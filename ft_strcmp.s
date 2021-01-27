section .text
global _ft_strcmp

_ft_strcmp :
xor rcx,rcx
_boucle:
mov bl,  [rdi + rcx]
mov dl, [rsi+ rcx]
cmp bl, 0x0
je _end
cmp dl, 0x0
je _end
cmp bl , dl
jne _end
inc rcx
jmp _boucle

_end:
 sub bl, dl
 movsx rax, bl
ret