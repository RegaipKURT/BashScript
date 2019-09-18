#! /bin/bash

#ekrana yazı yazdırma
echo "Hoşgeldiniz..." 

# DEĞİŞKENLER
# 1. SİSTEM DEĞİŞKENLERİ
echo "Bash Versiyonu: "$BASH_VERSION
echo "Tanımlı Home Dizini: "$HOME
echo "Bulunulan Dizin: "$PWD
# sistem değişkenleri yukarıdaki gibi büyük harfle $ işaretinden sonra yazılır

# 2. KULLANICI DEĞİŞKENLERİ
isim="kemal"
echo $isim
# DİKKAT!!! Eğer değişken tanımlarken = işaretinden sonra boşluk bırakılırsa, atama işlemi başarısız olur
# bunun sebebi boşluk bırakılan her ifadeyi bash dilinin komut olarak algılamasıdır.
isim = "kemal" #burası hatalı kod örneği
echo "İsim: "$isim
# Atama işlemi yaparken boşluk bırakılmadan yapılmalıdır.

# Di̇kkat!!! Değişkenlerin isimlerinin başında rakam kullanmak da hataya sebep olur
1sayi=5 #hatalı kod örneği
echo $1sayi #bu satırda 1 yazılmayacak ama ekrana sayi ifadesi yazılacak.
#doğru kullanım
sayi=5
echo "Sayı: "$sayi

