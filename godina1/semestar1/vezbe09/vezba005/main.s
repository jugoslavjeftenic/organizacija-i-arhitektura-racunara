.section .data
a: .long 3
rezultat: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl %eax, %ebx
jmp squaring_loop

#########################
addition_func:
decl %ebx
addl %eax, rezultat
jmp squaring_loop
#########################

squaring_loop:
cmpl $0, %ebx
ja addition_func

end:
ret
