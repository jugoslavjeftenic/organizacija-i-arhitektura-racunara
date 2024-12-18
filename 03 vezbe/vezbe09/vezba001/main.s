.section .data
a: .long 4
b: .long 8
proizvod: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx

multiplication_loop:
cmpl $1, %ebx
jbe end
addl a, %eax
decl %ebx
jmp multiplication_loop

end:
movl %eax, proizvod
ret
