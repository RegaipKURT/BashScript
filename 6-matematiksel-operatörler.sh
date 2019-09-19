#! /bin/bash

echo 1+1 " Hatalı kullanım sonucu 2 yazmadı!"
# echo $(1+1) #hata verecektir.
# bunlar yanlış kullanımları

# doğru sonuç için $ işareti 2 tane parantez kullanmak lazım
echo $((1+1)) " Doğru kullanım sonucu!"

echo
sayi1=12
sayi2=56

echo $sayi1 $sayi2
yenisayi=$(( sayi1 + sayi2 ))
echo "Toplam = " $yenisayi
yenisayi=$(( sayi1 - sayi2 ))
echo "Fark = " $yenisayi
yenisayi=$(( sayi1 * sayi2 ))
echo "Çarpım = " $yenisayi
yenisayi=$(( sayi1 / sayi2 ))
echo "Bölüm = " $yenisayi
yenisayi=$(( sayi1 % sayi2 ))
echo "Mod = " $yenisayi


#sayıları değiştirip yapalım tekrar
echo #boşluk bırakmak için echo yazdık
echo
sayi1=54
sayi2=12

echo $sayi1 $sayi2
yenisayi=$(( sayi1 + sayi2 ))
echo "Toplam = " $yenisayi
yenisayi=$(( sayi1 - sayi2 ))
echo "Fark = " $yenisayi
yenisayi=$(( sayi1 * sayi2 ))
echo "Çarpım = " $yenisayi
yenisayi=$(( sayi1 / sayi2 ))
echo "Bölüm = " $yenisayi
yenisayi=$(( sayi1 % sayi2 ))
echo "Mod = " $yenisayi

#FARKLI BİR KULLANIM ÖRNEĞİ
echo $( expr $sayi1 + $sayi2 ) #Bu şekilde tek parantezle de kullanılabilir.
echo $( expr $sayi1 - $sayi2 )
echo $( expr $sayi1 * $sayi2 ) #hatalı kullanım. çarpmada \ işareti ile kaçmak gerekir.
echo $( expr $sayi1 \* $sayi2 ) #expr çarpma işaretinde kaçış dizesi kullanmazsak hata verir.
echo $( expr $sayi1 / $sayi2 )
echo $( expr $sayi1 % $sayi2 )
#şimdi float işlemlerine bakalım.