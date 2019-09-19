#! /bin/bash

# FOR KULLANIMI
# FOR DÖNGÜLERİ BİRKAÇ FARKLI ŞEKİLDE KULLANILABİLİR.

# 1. TİP
for (( i=1;i<10;i++ )); do
	echo $i
done


# 2. TİP
# sadece güzel görünsün diye biraz süsledik. sadece komut adını gösterip çalıştırıyor.
for i in pwd ls; do
	echo
	echo "------------------------$i------------------------"
	$i
	echo "--------------------------------------------------"
	echo
done

# 3. TİP KULLANIMI
#BASH_VERSION 3'ten büyükse şu şekilde de kullanılabilir.
echo $BASH_VERSION 

for i in {1..5}; do
	echo $i
done

# BU SEFER İKİŞER ARTIRARAK YAPMAYI GÖRELİM
for i in {1..10..2}; do
	echo $i
done

# LİSTELERLE FOR KULLANIMI
liste=( "Gazi" "Mustafa" "Kemal" "Atatürk" )
for i in ${liste[*]}; do
	echo $i
done