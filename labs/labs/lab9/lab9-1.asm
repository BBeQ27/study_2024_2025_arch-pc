%include 'in_out.asm'

section .data
    msg db 'Введите x: ', 0
    result db '2x+7=', 0

section .bss
    x resb 80
    res resb 80

section .text
    global _start

_start:
    ; Основная программа
    mov eax, msg
    call sprint
    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi
    call _calcul

    mov eax, result
    call sprint
    mov eax, [res]
    call iprintLF

    call quit

_calcul:
    mov ebx, 2
    mul ebx
    add eax, 7
    mov [res], eax
    ret
