.section .data
mojbroj: .long 31
drugibroj: .long 45

.section .text
.global _main
_main:

movl mojbroj, %eax  # vrednost adrese
movl $mojbroj, %ebx # adresa
addl $4, %ebx       # dodajem 4 polja(vrednost 15) na adresu
movl (%ebx), %ecx   # dereferenciram adresu
movl %eax, %edx     # na adresi mojbroj je i dalje originalna vrednost

ret
