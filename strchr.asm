BITS 64
GLOBAL strchr
SECTION .text

strchr:
    mov rax, 0
    mov rcx, 0

main_loop:
    cmp BYTE[rdi + rcx], sil
    je return_pos
    cmp BYTE[rdi + rcx], 0
    je return_zero
    inc rcx
    jmp main_loop

return_pos:
    add rdi, rcx
    mov rax, rdi
    ret

return_zero:
    mov rax, 0
    ret