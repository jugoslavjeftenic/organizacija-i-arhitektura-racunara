.section .data
a: .long 4
b: .long 5
rezultat: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl %eax, %ecx
movl b, %ebx
decl %ebx
jmp multiplication_loop

#########################
addition_func:
decl %ecx
addl %eax, rezultat
jmp multiplication_loop

next_exponent_func:
decl %ebx
movl a, %ecx
decl %ecx
movl rezultat, %eax
jmp multiplication_loop
#########################

multiplication_loop:
cmpl $0, %ecx
ja addition_func

next_exponent_loop:
cmpl $1, %ebx
ja next_exponent_func

end:
ret

