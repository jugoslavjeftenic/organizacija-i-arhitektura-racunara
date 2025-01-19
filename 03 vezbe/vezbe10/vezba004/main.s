.section .data
niz: .long 5, 2, 15, 4, 20, 5, 3
niz_duzina: .long 7
proizvod: .long 1
.section .text
.global _main
_main:

movl niz_duzina, %ebx   #brojac niza
movl $niz_duzina, %eax  #adresa niza

sledeci_element:
subl $4, %eax           #prethodni element niza
movl $0, %ecx           #reset registra proizvoda
movl (%eax), %edx       #brojac mnozenja

    mnozenje:
    addl proizvod, %ecx #dodaj proizvod na sebe
    decl %edx           #umanji brojac mnozenja
    cmp $0, %edx
    ja mnozenje         #ako nije zavrseno mnozenje, skoci napravi novi krug

movl %ecx, proizvod     #prebaci u proizvod
decl %ebx               #umanji brojac petlje niza
cmp $0, %ebx
ja sledeci_element      #ponovi petlju ako nije zadnji element

kraj:
ret
