.section .data
array: .long 5, 2, 15, 4, 20, 5, 3
array_len: .long 7
product: .long 1
.section .text
.global _main
_main:

#nije zavrseno

movl $array_len, %edx
subl $4, %edx
movl array_len, %ebx

movl (%edx), %eax
subl $4, %edx
movl (%edx), %ecx
jmp multiplicate

load_factors:
movl product, %ecx
subl $4, %edx
movl (%edx), %eax

multiplicate:
addl product, %ecx
decl %eax
cmpl $1, %eax
ja multiplicate

addl product, %ecx
movl %ecx, product
decl %ebx
cmpl $0, %ebx
jbe end
jmp load_factors

end:
ret

#180.000
