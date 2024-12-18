.section .data
a: .long 51
paran: .long 69
.section .text
.global _main
_main:

mov a, %eax
andl $1, %eax
xorl $1, %eax
movl %eax, paran

ret
