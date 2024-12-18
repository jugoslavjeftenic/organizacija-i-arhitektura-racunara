.section .data
A: .long 20
rezultat: .long 0
.section .text
.global _main
_main:

mov A, %eax

cmp $10, %eax
jae vecejednakodeset

movl $0, rezultat
jmp kraj

vecejednakodeset:
cmp $20, %eax
jb manjeoddvadeset

movl $2, rezultat
jmp kraj

manjeoddvadeset:
movl $1, rezultat

kraj:
ret
