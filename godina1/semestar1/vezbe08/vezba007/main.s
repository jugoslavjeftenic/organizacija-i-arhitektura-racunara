.section .data
a: .long 40
b: .long 10
.section .text
.global _main
_main:

movl a, %eax
movl b, %ebx

isANotEqualB:
cmp %ebx, %eax
je end
ja aIsGreatherThenB

subl %eax, %ebx
jmp isANotEqualB

aIsGreatherThenB:
subl %ebx, %eax
jmp isANotEqualB

end:
ret
