BITS 64
GLOBAL memset
SECTION .text

memset:
    mov rax, 0
    mov rcx, 0

main_loop:
    cmp rcx, rdx
    je return_pointer
    mov BYTE[rdi + rcx], sil
    inc rcx
    jmp main_loop

return_pointer:
    mov rax, rdi
    ret