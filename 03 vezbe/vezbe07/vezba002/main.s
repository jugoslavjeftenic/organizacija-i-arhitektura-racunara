.section .data
.section .text
.global _main
_main:

# (A+B)-(C+D)-(E+F)
# (10+20)-(8+4)-(12+6)
# 30-12-18 = 0

movl $10, %eax
movl $20, %ebx
addl %eax, %ebx
movl %ebx, %edx

movl $8, %eax
movl $4, %ebx
addl %eax, %ebx
subl %ebx, %edx

movl $12, %eax
movl $6, %ebx
addl %eax, %ebx
subl %ebx, %edx

ret
