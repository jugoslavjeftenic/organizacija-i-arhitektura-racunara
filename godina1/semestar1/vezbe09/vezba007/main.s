.section .data
a: .long 3
b: .long 3
rezultat: .long 0
ostatak: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx
movl $0, %ecx
movl $0, %edx
jmp main_thread

#########################
divide_b_with_a:
cmpl %ebx, %eax
jb substract_a_from_b
movl %ecx, rezultat
movl %ebx, ostatak
jmp end

substract_a_from_b:
incl %ecx
subl %eax, %ebx
jmp divide_b_with_a
#########################
multiply_a_and_b:
cmpl $0, %ebx
ja add_a_to_a
movl %edx, rezultat
jmp end

add_a_to_a:
decl %ebx
addl %eax, %edx
jmp multiply_a_and_b
#########################
a_is_equal_to_b:
movl %eax, %ecx
andl $1, %ecx
cmpl $0, %ecx
je numbers_are_even

cmpl $1, %ecx
je numbers_are_odd

movl $69, rezultat  # pizdec
jmp end

numbers_are_even:
addl $125, %eax
jmp multiply_a_and_b

numbers_are_odd:
addl $250, %eax
mov $0, %ecx

divide_a_with_b:
cmpl %eax, %ebx
jb substract_b_from_a
movl %ecx, rezultat
movl %eax, ostatak
jmp end

substract_b_from_a:
incl %ecx
subl %ebx, %eax
jmp divide_a_with_b
#########################

main_thread:
cmpl %ebx, %eax
jb divide_b_with_a      # a is lesser then b
ja multiply_a_and_b     # b is lesser then a
je a_is_equal_to_b

end:
ret
