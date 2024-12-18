.section .data
A: .long 1
B: .long 5
count: .long 0
.section .text
.global _main
_main:

movl B, %ebx

daLiJeAVeciIliJednakB:
cmp %ebx, A
jae kraj

incl A
incl count
jmp daLiJeAVeciIliJednakB

kraj:
ret
