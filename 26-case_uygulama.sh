#! /bin/bash

# CASE KULLANIMI UYGULAMA ÖRNEĞİ

<< --CASE

10-CASE KULLANIMI İLE İLGİLİ UYGULAMA ÖRNEĞİ

--CASE

ay=$(date +%m)
gun=$(date +%d)
yil=$(date +%y)

case $ay in

	02) echo "Bu ay 28 veya 29 gün olabilir";;

	04|06|09|11)
		echo "Bu ay 30 gün sürer.";;
	
	*)
		echo "Bu ay 31 gündür.";;
esac

case $ay in
	01)
		ayim="Ocak";;
	02)
		ayim="Şubat";;
	03)
		ayim="Mart";;
	04)
		ayim="Nisan";;
	05)
		ayim="Mayıs";;
	06)
		ayim="Haziran";;
	07)
		ayim="Temmuz";;
	08)
		ayim="Ağustos";;
	09)
		ayim="Eylül";;
	10)
		ayim="Ekim";;
	11)
		ayim="Kasım";;
	12)
		ayim="Aralık";;
esac
echo
echo "Gün:$gun, Ay:$ayim, Yıl:$yil"
echo