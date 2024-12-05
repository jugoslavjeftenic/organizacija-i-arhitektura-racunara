.section .data
array: .long 1, 10, 15, 25
.section .text
.global _main
_main:

movl $array, %eax
addl $8, %eax
movl (%eax), %ebx
movl $9, (%eax)

end:
ret
