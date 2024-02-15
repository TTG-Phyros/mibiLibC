BITS 64
GLOBAL memmove
SECTION .text

memmove:
    mov rax, 0
    mov rcx, 0
    mov r8, 0
    mov r9, rsi
    cmp rsi, rdi
    jl main_loop_greater
    jmp main_loop_lower

main_loop_lower:
    cmp rdx, 0
    je return
    mov r8b, BYTE[r9 + rcx]
    mov BYTE[rdi + rcx], r8b
    inc rcx
    dec rdx
    jmp main_loop_lower

main_loop_greater:
    cmp rdx, 0
    je return
    dec rdx
    mov r8b, BYTE[r9 + rdx]
    mov BYTE[rdi + rdx], r8b
    jmp main_loop_greater

return:
    mov rax, rdi
    ret