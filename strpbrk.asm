BITS 64
GLOBAL strpbrk
SECTION .text

strpbrk:
    mov rax, 0
    mov rcx, 0

main_loop:
    cmp BYTE[rdi + rcx], 0
    je return_zero
    mov r9, 0
    jmp check_chars

main_loop_suite:
    inc rcx
    jmp main_loop

check_chars:
    mov r8b, BYTE[rsi + r9]
    cmp r8b, 0
    je main_loop_suite
    cmp BYTE[rdi + rcx], r8b
    je return_pointer
    inc r9
    jmp check_chars

return_pointer:
    add rdi, rcx
    mov rax, rdi
    ret

return_zero:
    mov rax, 0
    ret