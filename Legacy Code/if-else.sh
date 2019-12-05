#i/bin/bash

echo "Masukkan Detik : "
read detik

jam=3600
menit=60

if [ $detik -ge $jam ]
then
	let detik_sisa=$detik-$jam
	let detik_sisa2=$detik_sisa-$menit
	let hs=$detik/$jam
	let hs_2=detik_sisa/$menit
	let detik_sisa3=$hs_2*$menit
	let detik_sisa4=$detik_sisa-$detik_sisa3
	echo $hs "Jam" $hs_2 "Menit" $detik_sisa4 "Detik"

elif [ $detik -ge $menit ]
then
	let detik_sisa2=$detik-$menit
	let hs_2=$detik/$menit
	echo $hs_2 "Menit" $detik_sisa2 "Detik"

else
	echo $detik "Detik"
fi
