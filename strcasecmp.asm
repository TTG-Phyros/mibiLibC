BITS 64
GLOBAL strcasecmp
SECTION .text

strcasecmp:
    mov rax, 0
    mov rcx, 0

main_loop:
    mov r8b, BYTE[rsi + rcx]
    cmp BYTE[rdi + rcx], 0
    je check_second_arg
    cmp r8b, 0
    je return_zero
    cmp BYTE[rdi + rcx], r8b
    jne check_case

main_loop_suite:
    inc rcx
    jmp main_loop

check_case:
    mov r9, 0
    add r9b, BYTE[rdi + rcx]
    sub r9, r8
    cmp r9, 32
    je main_loop_suite
    cmp r9, -32
    je main_loop_suite
    mov rax, r9
    ret

check_second_arg:
    cmp r8b, 0
    je return_zero
    mov r9, 0
    add r9b, BYTE[rdi + rcx]
    sub r9, r8
    mov rax, r9
    ret

return_zero:
    mov rax, 0
    ret