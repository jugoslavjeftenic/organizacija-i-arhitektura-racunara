.section .data
a: .long 6
b: .long 3
zbir: .long 0
razlika: .long 0

.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx

movl %eax, %ecx
addl %ebx, %ecx
movl %ecx, zbir

movl %eax, %edx
subl %ebx, %edx
movl %edx, razlika

ret

