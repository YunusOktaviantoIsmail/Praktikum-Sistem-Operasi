clear

declare -a nama
declare -a npm

a=0
i=0

input(){
	a=$a+1
	echo -n "Masukan Nama     : "
	read nama[$a]
	echo -n "Masukan NPM      : "
	read npm[$a]
	echo -n "Masukan Jurusan  : "
	read jurusan[$a]
	echo -n "Masukan Fakultas : "
	read fakultas[$a]
	echo -e "\nPress ENTER to continue.."	
	read -p "$*"
}

view(){
	for((i=1; i<=a; i++))
	do
		echo -e "==== Data ke-$[i] ===="
		echo -e "Nama    : ${nama[$i]}"
		echo -e "NPM     : ${npm[$i]}"
		echo -e "Jurusan : ${jurusan[$i]}"
		echo -e "Fakultas: ${fakultas[$i]}"
		echo -e ""
	done
	read -p "$*"
}

update(){
	echo -n "Masukan NPM yang akan di Update : "
	read update_npm
	for((i=1; i<=a; i++))
	do
		if [ $update_npm-eq${npm[$i]} ]
		then
			echo -n ""
			echo -n "Masukan Nama     : "
			read nama[$i]
			echo -n "Masukan NPM      : "
			read npm[$i]			
			echo -n "Masukan Jurusan  : "
			read jurusan[$i]
			echo -n "Masukan Fakultas : "
			read fakultas[$i]
			break
		fi	
	done
}

while :;
do

echo -e "==== PROGRAM DATA MAHASISWA ===="
echo -e "1. Input Data"
echo -e "2. View Data"
echo -e "3. Update Data"
echo -e "4. Exit"
echo -n "Masukkan Pilihan : "
read pilihan

if [ $pilihan == 1 ]
then
	clear
	input
	clear
fi

if [ $pilihan == 2 ]
then
	clear
	view
	clear
fi

if [ $pilihan == 3 ]
then
	clear
	update
	clear
fi

if [ $pilihan == 4 ]
then
	clear
	echo -e "TERIMA KASIH TELAH MENGGUNAKAN PROGRAM INI"
	echo -e "============== Salam Sukses =============="
	read -p "$*"
	clear
	exit
fi

done
