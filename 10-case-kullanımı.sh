#! /bin/bash

# CASE KULLANIMI

while [[ 1==1 ]]; do
	echo -e "Herhangi bir karakter giriniz: \c"
	# -e ve \c ile imlecin alt satıra geçmesini engelledik.
	read deger

	# "case $deger in esac" arasına durumlar aşağıdaki gibi yazılır. 
	case $deger in
	[a-z] )
	echo "A-Z arasında bir harf girildi...";;
	[0-9] )
	echo "0-9 arasında bir sayı girildi";;
	? ) # özel karakterlerin tamamı ? ile belirtilebilir (!'^%][=] gibi)
	echo "Özel karakter girildi: ==> $deger ";;
	* )
	echo "Girilen değer tanımlanamadı..."
	esac
done
