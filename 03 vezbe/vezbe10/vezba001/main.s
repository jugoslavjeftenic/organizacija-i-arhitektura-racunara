.section .data
niz: .long 1, 10, 15, 25
.section .text
.global _main
_main:

movl $niz, %eax
addl $8, %eax
movl $9, (%eax)

kraj:
ret
