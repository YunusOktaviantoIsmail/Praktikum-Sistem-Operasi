clear

declare -a nama_pasien
declare -a jenis_kelamin
declare -a nama_penyakit
declare -a alamat
declare -a nomor_kamar
declare -a kamar

a=0

input(){
	echo -n "Masukan Nama Pasien         : "
	read nama_pasien[$a]
	echo -n "Masukan Jenis Kelamin (L/P) : "
	read jenis_kelamin[$a]
	echo -n "Nama Penyakit               : "
	read nama_penyakit[$a]
	echo -n "Masukan Alamat Pasien       : "
	read alamat[$a]
	clear
	pilih_kamar

	echo -e ""
	echo -n "Apakah data Sudah benar [y/t] ? "
	read putusan
	
	if [ $putusan == 'y' ] || [ $putusan == 'Y' ]
	then
		echo -e ""		
		echo -e "Press ENTER to continue.."
		read -p "$*"
		a=$a+1
		clear
	elif [ $putusan == 't' ] || [ $putusan == 'T' ]
	then
		clear
		input
		clear
	fi
}

view(){
	for((i=0; i<a; i++))
	do
		echo -e ""
		echo -e "==== Data Pasien ke-$[i+1] ===="
		echo -e "Nama Pasien   : ${nama_pasien[$i]}"
		echo -e "Jenis Kelamin : ${jenis_kelamin[$i]}"
		echo -e "Nama Penyakit : ${nama_penyakit[$i]}"
		echo -e "Alamat Pasien : ${alamat[$i]}"
		echo -e "Nomor Kamar   : ${kamar[$i]}"
	done
}

pilih_kamar(){
	echo -e "==== Pilih Kamar ===="	
	nomor_kamar=(101,102,103,104,105)
	echo -e ${nomor_kamar[*]}
	echo -e "" 
	echo -n "Pilih Kamar : "
	read kamar[$a]
		
	if [ ${kamar[$a]} == 101 ]
	then
		echo -e "Nomor Kamar : ${kamar[$a]}"
		
		for((i=0; i<a; i++))
		do
			if [ ${kamar[$i]} == ${kamar[$i-1]} ]
			then
				echo -e ""
				echo -e "=== Kamar Penuh ==="
				read -p "$*"
				clear
				pilih_kamar
			fi
		done

	elif [ ${kamar[$a]} == 102 ]
	then
		echo -e "Nomor Kamar : ${kamar[$a]}"
			
		for((i=0; i<a; i++))
		do
			if [ ${kamar[$i]} == ${kamar[$i-1]} ]
			then
				echo -e ""
				echo -e "=== Kamar Penuh ==="
				read -p "$*"
				clear
				pilih_kamar
			fi
		done

	elif [ ${kamar[$a]} == 103 ]
	then
		echo -e "Nomor Kamar : ${kamar[$a]}"

		for((i=0; i<a; i++))
		do
			if [ ${kamar[$i]} == ${kamar[$i-1]} ]
			then
				echo -e ""
				echo -e "=== Kamar Penuh ==="
				read -p "$*"
				clear
				pilih_kamar
			fi
		done
		
	elif [ ${kamar[$a]} == 104 ]
	then
		echo -e "Nomor Kamar : ${kamar[$a]}"

		for((i=0; i<a; i++))
		do
			if [ ${kamar[$i]} == ${kamar[$i-1]} ]
			then
				echo -e ""
				echo -e "=== Kamar Penuh ==="
				read -p "$*"
				clear
				pilih_kamar
			fi
		done

	elif [ ${kamar[$a]} == 105 ]
	then
		echo -e "Nomor Kamar : ${kamar[$a]}"
		
		for((i=0; i<a; i++))
		do
			if [ ${kamar[$i]} == ${kamar[$i-1]} ]
			then
				echo -e ""
				echo -e "=== Kamar Penuh ==="
				read -p "$*"
				clear
				pilih_kamar
			fi
		done
	else
		echo -e ""
		echo -e "Kamar Tidak Ada"
		echo -e "Silahkan Pilih Lagi"
		echo -e "Tekan ENTER.."
		read -p "$*"
		clear
		pilih_kamar
	fi  
}

update(){
	echo -e "===== MENU UPDATE  ====="
	echo -n "Masukan Nomor Kamar : "
	read update_kamar
	
	for((i=0; i<a; i++))
	do
		if [ $update_kamar == ${kamar[$i]} ]
		then
			echo -e ""
			echo -n "Masukan Nama Pasien         : "
			read nama_pasien[$i]
			echo -n "Masukan Jenis Kelamin (L/P) : "
			read jenis_kelamin[$i]
			echo -n "Nama Penyakit               : "
			read nama_penyakit[$i]
			echo -n "Masukan Alamat Pasien       : "
			read alamat[$i]
			echo -n "Nomor Kamar                 : ${kamar[$i]}"
			echo ""
			echo -e "==== DATA PASIEN SUDAH DIUPDATE ===="			
			break
		fi
	done
}

cari_pasien(){
	echo -n "Masukan Nama Pasien : "
	read cari_pasien

	for((i=0; i<a; i++))
	do
		if [ $cari_pasien == ${nama_pasien[$i]} ]
		then
			echo ""
			echo -e "Nama Pasien   : ${nama_pasien[$i]}"
			echo -e "Jenis Kelamin : ${jenis_kelamin[$i]}"
			echo -e "Nama Penyakit : ${nama_penyakit[$i]}"
			echo -e "Alamat Pasien : ${alamat[$i]}"
			echo -e "Nomor Kamar   : ${kamar[$i]}"
		break
		fi
	done
}

buat_folder(){
	ls -l
	echo ""
	echo -e "Buat Folder Anda"
	echo -n "Masukan Nama Folder : "
	read nama_folder
	mkdir $nama_folder	
	echo -e "==== FOLDER TELAH DIBUAT ===="
	echo ""
	ls -l
}

buka_firefox(){
	firefox http://google.com
}

while :;
do

echo -e "===== SISTEM INFORMASI RUMAH SAKIT ====="
echo -e "1. Daftarkan Pasien"
echo -e "2. Lihat Daftar Pasien"
echo -e "3. Cari Pasien"
echo -e "4. Update Data Pasien"
echo -e "5. Buat Folder"
echo -e "6. Buka Mozila Firefox"
echo -e "7. Exit"
echo -n "Masukan pilihan anda : "
read pilih_menu

if [ $pilih_menu == 1 ]
then
	clear
	input
elif [ $pilih_menu == 2 ]
then
	clear
	view
	read -p "$*"
	clear
elif [ $pilih_menu == 3 ]
then
	clear
	cari_pasien
	read -p "$*"
	clear
elif [ $pilih_menu == 4 ]
then
	clear
	update
	read -p "$*"
	clear
elif [ $pilih_menu == 5 ]
then
	clear
	buat_folder
	read -p "$*"
	clear
elif [ $pilih_menu == 6 ]
then
	clear
	buka_firefox
	read -p "$*"
	clear
elif [ $pilih_menu == 7 ]
then
	clear
	echo -e "TERIMA KASIH TELAH MENGGUNAKAN PROGRAM INI"
	echo -e "============== Salam Sukses =============="
	read -p "$*"
	clear
	exit
else
	echo -e ""
	echo -e "Input tidak valid"
	read -p "$*"
	clear
fi

done
