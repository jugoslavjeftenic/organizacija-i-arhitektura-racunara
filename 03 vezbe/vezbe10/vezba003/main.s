.section .data
niz: .long 1, 53, 2, 14, 6
niz_duzina: .long 5
zbir: .long 0
.section .text
.global _main
_main:

movl $niz_duzina, %eax  #adresa elementa niza
movl niz_duzina, %ebx   #brojac niza
addl $1, %ebx           #dodaj 1 na brojac niza
movl zbir, %edx         #pomeri zbir u d
jmp iteracijakrozniz

saberi:
addl (%eax), %edx       #saberi trenutni element sa d
movl %edx, zbir         #pomeri d u zbir

iteracijakrozniz:
subl $4, %eax           #idi na prethodni element
decl %ebx               #umanji brojac niza
cmp $0, %ebx            #proveri brojac niza
ja saberi               #petljaj ako nije kraj niza

kraj:
ret
