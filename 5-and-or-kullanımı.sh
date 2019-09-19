#! /bin/bash

read -p "Lütfen Yaşınızı Giriniz: " yas

# and işareti --> &&
# or işareti --> || 

# ayrıca (and--> -a) ve (or --> -o) ile gösterilebilir.

if [[ $yas < 26 ]] ||  [[ $yas > 26 ]]; then
	echo "Yaş 26 değil \nİsminizi yazın: "
	read isim
	if [[ $isim < "zeynep" ]]; then
		echo "Sağlık Olsun..."
	elif [[ $isim == "zeynep" ]]; then
		echo "Güzel bir isim...\n"
		echo "Güzel Yaşayın..."
	else
		echo "Sorun yok..."
	fi

else
	echo "Yaş 26... 26 da yolun yarısı edebilir. \n"
	echo "Üstelik Zeynep güzel bir isim..."
fi

read -p "Lütfen Şifre Giriniz: " sifre

if [[ $sifre == "zeynep" || $sifre == "Zeynep" || $sifre == "ZEYNEP" ]]; then
	echo "Şifre Doğru..."
elif [[ "$sifre" < "zeynep"]] || [["$sifre" > "zeynep" ]]; then # saçma bir koşul bu
	echo "Şifre Yanlış Girildi..."
fi