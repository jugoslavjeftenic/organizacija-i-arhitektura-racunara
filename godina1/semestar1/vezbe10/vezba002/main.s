.section .data
array: .long 12, 15, 5, 13, 1, 5
.section .text
.global _main
_main:

movl $0, %edx   # result counter
movl $0, %ecx   # array index
movl $array, %eax
movl (%eax), %ebx

compare_loop:
cmpl $10, %ebx
ja increase_counter

next_element:
addl $4, %eax
movl (%eax), %ebx
addl $1, %ecx
cmp $6, %ecx
jae end
jmp compare_loop

increase_counter:
addl $1, %edx
jmp next_element

end:
ret
