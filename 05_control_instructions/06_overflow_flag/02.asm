; JNO → Jump if No Overflow
section .data
    msg_ov db "Hello, This is Parneet Kaur, Student No:166985",10,0
    msg_noov db "Hello, This is Parneet Kaur, Student No:166985",10,0

section .text
    global _start
_start:
    mov ax,5
    add ax,2
    jno nooverflow

    mov ecx, msg_ov
    jmp print

nooverflow:
    mov ecx, msg_noov

print:
    mov eax,4
    mov ebx,1
    mov edx,50
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
