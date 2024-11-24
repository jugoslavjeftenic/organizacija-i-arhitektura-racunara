.section .data
.section .text
.global _main
_main:

movl $15, %eax
movl $10, %ebx

jmp preskoci
movl $20, %ecx

preskoci:
cmpl %ebx, %eax
ja veci
jb manji

veci:
movl $1, %ecx
jmp kraj

manji:
movl $0, %ecx

kraj:
ret

