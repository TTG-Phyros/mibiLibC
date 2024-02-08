BITS 64
GLOBAL strlen
SECTION .text

strlen:
    mov rax, 0
    mov rcx, 0

main_loop:
    cmp BYTE[rdi + rcx], 0
    je return_len
    inc rcx
    jmp main_loop

return_len:
    mov rax, rcx
    ret