#! /bin/bash

read -p "Bir Sayi giriniz: " sayi

# kontrol ifadelerini ister yazi ile ister matematiksel opretaör ile yazabiliriz.
# aşağıda yazı ile kontrol ifadesi kullanacağız
#if kullanırken parantezlere ve boşuklara dikkat edilmesi gerekiyor.

# 1-MATEMATİKSEL İFADELER İÇİN
if [[ $sayi -eq 10 ]]; then 
	echo "Sayi 10'a eşit"
elif (( $sayi > 10 )); then # bu sefer normal parantez. çünkü matematiksel gösterim kullandık
	echo "sayi 10'dan büyük"
elif (( sayi < 10 )) ; then
	echo "Sayi 10'dan küçük"
fi #final demek. yani sonlandır.



# 2-STRİNG İFADELER İÇİN
echo
read -p "Lütfen iki kelimelik bir şey yaziniz: " yazi yazim

# string ifadelerde eşitlik kontrolü varsa çift paranteze gerek yok ama diğer hallerde çift parantez şart
# string ifadelerde karşılaştırma eşitlik veya alfabetik sıralama şeklinde olur.
if [ $yazi == $yazim ]; then
	echo "AYNILAR İŞTE..."
elif [[ $yazi -gt $yazim ]]; then
	echo "$yazi, $yazim değerine göre sonra gelir"
else
echo "$yazi, $yazim değerine göre önce gelir"
fi
