section .data
    msg1 db 'Hello, ', 0
    msg2 db 'world!', 10, 0

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, 7
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, 7
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80
