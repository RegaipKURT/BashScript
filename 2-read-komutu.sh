#! /bin/bash

#dışardan değişken alma
echo "İsminiz: "
read isim
echo "Hoşgeldiniz $isim"

#birden fazla değişken de alınabilir 
echo "İsimler: "
#boşluk bırakılan değerleri ayrı ayrı okuyacağız
read isim1 isim2 isim3
echo "İsimler: $isim1, $isim2, $isim3"
#ama argüman şeklinde de alıp yazdırabiliriz. Örnek:
echo "İsimler: "
read -a isimler
echo "İsimleriniz: ${isimler[0]}, ${isimler[1]}, ${isimler[2]}" #köşeli parantezlere dikkat edin!

#eğer konsolda aynı satırda ismi yazmak istiyorsak read -p parametresini kullanıyoruz
# -p (print demek) kullanınca echo kullanmamıza gerek yok.
read -p "İsminiz: " isim4 
echo "İsim Alındı: $isim4"
read -s -p "Şifre: " sifre
# read -sp şeklinde de yazılabilir.
# p print s ise silent demek. yani şifre kısmını biz yazarken göstermeyecek.
echo # read komutundan sonra alta geçsin diye echo yazdık.
echo "Şifre Alındı: $sifre"