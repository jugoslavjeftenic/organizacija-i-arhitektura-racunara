.section .data
.section .text
.global _main
_main:

movl $10, %eax
movl $5, %ebx

addl %eax, %ebx     # ebx = eax + ebx (15)
subl %eax, %ebx     # ebx = ebx - eax (5)

xorl %eax, %eax

ret

