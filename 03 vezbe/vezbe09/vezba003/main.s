.section .data
a: .long 4
parnost: .long 0
.section .text
.global _main
_main:

movl a, %eax
andl $1, %eax
xorl $1, %eax
mov %eax, parnost

end:
ret
