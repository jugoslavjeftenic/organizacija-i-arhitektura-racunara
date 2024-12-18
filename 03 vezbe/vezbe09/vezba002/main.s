.section .data
a: .long 34
b: .long 8
kolicnik: .long 0
ostatak: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx

division_loop:
cmp %eax, %ebx
ja end

subl b, %eax
incl kolicnik
jmp division_loop

end:
movl %eax, ostatak
ret
