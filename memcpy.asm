BITS 64
GLOBAL memcpy
SECTION .text

memcpy:
    mov rax, 0
    mov rcx, 0

main_loop:
    cmp rcx, rdx
    je return_pointer
    mov r8b, BYTE[rsi + rcx]
    mov BYTE[rdi + rcx], r8b
    inc rcx
    jmp main_loop

return_pointer:
    mov rax, rdi
    ret