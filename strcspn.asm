BITS 64
GLOBAL strcspn
SECTION .text

strcspn:
    mov rax, 0
    mov rcx, 0
    mov r8, 0
    mov r9, 0

main_loop:
    cmp BYTE[rdi + rcx], 0
    je return_len
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
    je return_len
    inc r9
    jmp check_chars

return_len:
    mov rax, rcx
    ret