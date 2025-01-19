.section .data
niz1: .long 2, 3, 3, 1, 5, 7, 4, 1, 5, 8    #39
niz2: .long 3, 2, 2, 9, 6, 8, 5, 2, 3, 1    #41
niz_duzina: .long 10
s1: .long 0
s2: .long 0
Rezultat: .long 0
.section .text
.global _main
_main:

#prvi niz
movl niz_duzina, %ebx   #brojac elemenata
movl $niz1, %eax        #adresa elementa

suma_prvog_niza:
decl %ebx               #umanji brojac
movl s1, %ecx
addl (%eax), %ecx       #saberi element i sumu
movl %ecx, s1           #upisi sumu
addl $4, %eax           #pomeri na sledeci element
cmp $0, %ebx
ja suma_prvog_niza

#drugi niz
movl niz_duzina, %ebx   #brojac elemenata
movl $niz2, %eax        #adresa elementa

suma_drugog_niza:
decl %ebx               #umanji brojac
movl s2, %ecx
addl (%eax), %ecx       #saberi element i sumu
movl %ecx, s2           #upisi sumu
addl $4, %eax           #pomeri na sledeci element
cmp $0, %ebx
ja suma_drugog_niza

#uporedi sume i postavi Rezultat
movl s1, %eax
movl s2, %ebx
cmp %eax, %ebx
jbe kraj                #ako je s1 veci skoci na kraj
movl $1, Rezultat       #ako nije, smesti 1 u Rezultat

kraj:
ret
