.section .data
niz: .long 12, 15, 5, 13, 1, 5
duzina_niza: .long 6
brojac: .long 0
.section .text
.global _main
_main:

movl $niz, %eax
movl duzina_niza, %ebx
jmp dalijeveceod10

povecaj_brojac:
movl brojac, %edx
incl %edx
movl %edx, brojac

dalijekrajniza:
addl $4, %eax
decl %ebx
cmp $0, %ebx
jbe kraj

dalijeveceod10:
cmp $10, (%eax)
ja povecaj_brojac
jbe dalijekrajniza

kraj:
ret
