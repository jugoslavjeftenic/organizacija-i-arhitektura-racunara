.section .data
niz1: .long 12, 2, 4, 6, 9, 0, 1
niz2: .long 5, 3, 7, 2, 8, 9, 4
niz_duzina: .long 7
niz3: .long 0
niz3_element: .long 0
niz3_pozicija: .long 0
.section .text
.global _main
_main:

movl niz_duzina, %ebx       #brojac elemenata
movl $niz1, %ecx            #adresa elementa niza 1
movl $niz_duzina, %edx
subl $4, %edx               #adresa elementa niza 2


decl %ebx                   #umanjimo brojac
cmp $0, %ebx
jbe kraj                    #ako je brojac 0 idi na kraj u drugom slucaju saberi
movl (%ecx), %eax           #premesti element prvog niza u a
addl (%edx), %eax           #saberi element drugog niza sa a
movl %eax, niz3_element

addl $4, %ecx               #pomeri se na sledeci element niza 1
subl $4, %edx               #pomeri se na prethodni element niza 2

kraj:
ret
