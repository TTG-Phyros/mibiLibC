BITS 64
GLOBAL strrchr
SECTION .text

strrchr:
    mov rax, 0
    mov rcx, 0
    mov r8, 0

main_loop:
    cmp BYTE[rdi + rcx], sil
    je change_ans

suite_loop:
    cmp BYTE[rdi + rcx], 0
    je return
    inc rcx
    jmp main_loop

change_ans:
    mov r8, rdi
    add r8, rcx
    jmp suite_loop

return:
    mov rax, r8
    ret
