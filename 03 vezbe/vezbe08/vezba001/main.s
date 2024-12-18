.section .data
.section .text
.global _main
_main:

movl $10, %eax
movl $15, %ebx

cmpl %eax, %ebx
jae preskocisabiranje   # uslovni skok: (n)ot (a)bove, (b)elowe, (e)qual, (g)reater, (l)esser
# jmp preskocisabiranje # bezuslovni skok

addl $5, %eax

preskocisabiranje:
addl %eax, %ebx

ret
