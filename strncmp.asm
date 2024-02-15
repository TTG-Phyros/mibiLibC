BITS 64
GLOBAL strncmp
SECTION .text

strncmp:
    mov rax, 0
    mov rcx, 0
    mov r8, 0
    mov r9, 0

main_loop:
    cmp rcx, rdx
    je return_zero
    mov r8b, BYTE[rsi + rcx]
    cmp BYTE[rdi + rcx], 0
    je check_second_arg
    cmp r8b, 0
    je return_zero
    cmp BYTE[rdi + rcx], r8b
    jne return_diff
    inc rcx
    jmp main_loop

check_second_arg:
    cmp r8b, 0
    je return_zero
    jmp return_diff

return_diff:
    mov r9, 0
    add r9b, BYTE[rdi + rcx]
    sub r9, r8
    mov rax, r9
    ret

return_zero:
    mov rax, 0
    ret