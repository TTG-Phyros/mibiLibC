BITS 64
GLOBAL strstr
SECTION .text

strstr:
    mov rax, 0
    mov rcx, 0
    mov r9, 0

main_loop:
    cmp BYTE[rdi + rcx], 0
    je return_zero
    mov r8b, BYTE[rsi + r9]
    cmp r8b, 0
    je found_substr
    cmp BYTE[rdi + rcx], r8b
    jne main_loop_suite
    inc r9
    inc rcx
    jmp main_loop

main_loop_suite:
    mov r9, 0
    inc rcx
    jmp main_loop

found_substr:
    add rdi, rcx
    sub rdi, r9
    mov rax, rdi
    ret

return_zero:
    mov rax, 0
    ret