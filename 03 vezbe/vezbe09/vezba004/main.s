.section .data
a: .long 4
b: .long 22
c: .long 15
d: .long 7
najveci: .long 0
najmanji: .long 0
.section .text
.global _main
_main:

movl a, %eax
movl %eax, najveci
movl a, %eax
movl %eax, najmanji
jmp is_b_greater

#########################
b_is_greater_then_najveci:
movl b, %eax
movl %eax, najveci
jmp is_b_lesser

b_is_lesser_then_najmanji:
movl b, %eax
movl %eax, najmanji
jmp is_c_greater

c_is_greater_then_najveci:
movl c, %eax
movl %eax, najveci
jmp is_c_lesser

c_is_lesser_then_najmanji:
movl c, %eax
movl %eax, najmanji
jmp is_d_greater

d_is_greater_then_najveci:
movl d, %eax
movl %eax, najveci
jmp is_d_lesser

d_is_lesser_then_najmanji:
movl d, %eax
movl %eax, najmanji
jmp end
#########################

is_b_greater:
movl najveci, %eax
cmpl %eax, b
ja b_is_greater_then_najveci

is_b_lesser:
movl najmanji, %eax
cmpl %eax, b
jb b_is_lesser_then_najmanji

is_c_greater:
movl najveci, %eax
cmpl %eax, c
ja c_is_greater_then_najveci

is_c_lesser:
movl najmanji, %eax
cmpl %eax, c
jb c_is_lesser_then_najmanji

is_d_greater:
movl najveci, %eax
cmpl %eax, d
ja d_is_greater_then_najveci

is_d_lesser:
movl najmanji, %eax
cmpl %eax, d
jb d_is_lesser_then_najmanji

end:
ret
