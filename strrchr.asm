BITS 64
GLOBAL strrchr
SECTION .text

strrchr:
    mov rax, 0
    mov rcx, 0
    mov r8, 0

main_loop:
    cmp BYTE[rdi + rcx], 0
    je return_pos
    cmp BYTE[rdi + rcx], sil
    je change_ans

main_loop_suite:
    inc rcx
    jmp main_loop

change_ans:
    mov r8, 1
    add rdi, rcx
    jmp main_loop_suite

return_pos:
    cmp r8, 0
    je return_zero
    mov rax, rdi
    ret

return_zero:
    mov rax, 0
    ret