#! /bin/bash

# SAYI TAHMİN OYUNU
#random modulü kullanacağız: 
# random rasgele sayı üretir

#random büyük sayılar üretebileceği için 100 ile bölümünden 
# kalanı alıp 1 ekleyecez. sayimiz 1 ile 100 arasında olacak

random=$(( ($RANDOM%100)+1 ))

echo "1 ile 100 arasındaki sayımızı tahmin ediniz! "
echo
echo -e "Tahmininizi Giriniz: \c"
read tahmin

let tahminsayisi=1

while ((tahmin!=random))
do
	if ((tahmin>random))
	then
		echo
		echo "Daha küçük sayi giriniz!"
	elif ((tahmin<random))
	then
		echo
		echo "Daha büyük bir sayi giriniz!"
	fi
	echo -e "Tahmini yeniden giriniz: \c"
	read tahmin
	let tahminsayisi++
done

echo "$tahminsayisi defada bildiniz!"

if [ $tahminsayisi -lt 6 ]; then
	echo "Tebrikler!!!"
fi