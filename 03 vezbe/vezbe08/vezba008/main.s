.section .data
a: .long 26
b: .long 5
z: .long 0
.section .text
.global _main
_main:

# z = a - b
movl a, %eax
subl b, %eax
movl %eax, z

# compare with 5
cmpl $5, %eax
ja z_is_a5
addl $15, %eax
jmp end

z_is_a5:
# compare with 10
cmpl $10, %eax
je z_is_else
ja z_is_a10
addl $10, %eax
jmp end

z_is_a10:
# compare with 20
cmpl $20, %eax
jae z_is_else
addl $5, %eax
jmp end

z_is_else:
subl $20, %eax
jmp end

end:
movl %eax, z
ret
