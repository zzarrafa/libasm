section .text
global _ft_list_size

_ft_list_size:
xor rcx, rcx
_loop:
cmp rdi , 0
je _end
inc rcx,
mov rdi, [rdi + 8]
jmp _loop
 _end:
mov rax , rcx
ret