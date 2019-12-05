#!/bin/bash

while :; do
clear

printf "1. Input Nilai\n"
printf "2. Lihat Nilai\n"
printf "3. Perkalian Matriks\n"
printf "4. Keluar\n"
printf "Masukkan Pilihan anda = "

read choose

if [ $choose -eq 1 ]
then
	clear
	printf "Matriks 1 :\n"
	for ((z=0; z<=3; z++)) 
	do
		printf "Nilai ke- "$(($z+1))" = "
		read matriks1[$z]
	done
	
	printf "\nMatriks 2 :\n"
	for ((z=0; z<=3; z++)) 
	do
		printf "Nilai ke- "$(($z+1))" = "
		read matriks2[$z]
	done
fi

if [ $choose -eq 2 ]
then
	clear
	printf "Tampilan Matriks 1 :\n"
	for ((z=0; z<4; z++)) 
	do
		printf "${matriks1[$z]} "

		if [ $z -eq 1 ]
		then
			printf "\n"
		fi
	done

	printf "\n\nTampilan Matriks 2 :\n"
	for ((z=0; z<4; z++)) 
	do
		echo -n "${matriks2[$z]} "

		if [ $z -eq 1 ]
		then
			printf "\n"
		fi
	done

	read
fi

if [ $choose -eq 3 ]
then
	clear
	for ((z=0; z<2; z++)) 
	do
		for ((a=0; a<2; a++))
		do
			let matriksBaru[$z]+=matriks1[$a]*matriks2[$z+$a*2]
		done
	done

	for ((z=0; z<2; z++)) 
	do
		for ((a=0; a<2; a++)) 
		do
			let matriksBaru[$z+2]+=matriks1[$a+2]*matriks2[$z+$a*2]
		done	
	done
	
	printf "Hasil perkalian\n"
	for ((z=0; z<4; z++))
	do
		printf "${matriksBaru[$z]} "

		if [ $z -eq 1 ]
		then
			printf "\n"
		fi
	done
	unset matriksBaru
	read
fi

if [ $choose -eq 4 ]
then
	printf "Terima Kasih\n\n"	
	exit
fi

done
