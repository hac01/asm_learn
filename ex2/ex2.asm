global _start
section .data
    msg db "Hello internet this is Hac program", 0x0a
    len equ $ - msg

section .text
_start:
    mov eax, 4   ;sys_write system call
    mov ebx, 1   ;stdout file descr.
    mov ecx, msg ; bytes to write
    mov edx, len ; num of bytes to write
    int 0x80     ; perf sys call