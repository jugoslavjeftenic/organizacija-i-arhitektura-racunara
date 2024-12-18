.section .data
a: .long 1
b: .long 6

.section .text
.global _main
_main:

movl a, %eax
addl b, %eax

cmpl $15, %eax
ja veci
jmp kraj

veci:
subl $5, %eax

kraj:
ret
