.section .data
a: .long 5
b: .long 30
c: .long 20
y: .long 0
z: .long 0
.section .text
.global _main
_main:

movl b, %eax
subl c, %eax
addl a, %eax
movl %eax, z

# compare with 10
cmpl $10, z
jbe z_is_else
ja z_is_a10

z_is_a10:
# compare with 15
cmpl $15, z
jae z_is_else
movl $1, y
jmp end

z_is_else:
movl $0, y

end:
movl %eax, z
ret
