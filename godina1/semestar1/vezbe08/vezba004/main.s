.section .data
a: .long 10
b: .long 10

.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx

cmpl %ebx, %eax
ja aveciodb
jb amanjiodb

add $5, a
add $5, b
jmp kraj

aveciodb:
add $10, b
jmp kraj

amanjiodb:
addl $15, a

kraj:
ret
