.section .data
array: .long 1, 53, 2, 14, 6
sum: .long 0
.section .text
.global _main
_main:

movl $5, %ecx   # array index
movl $array, %eax
addl $16, %eax

sum_loop:
movl (%eax), %ebx
addl sum, %ebx
movl %ebx, sum

previous_element:
subl $4, %eax
subl $1, %ecx
cmp $0, %ecx
ja sum_loop

end:
ret
