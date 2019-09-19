#! /bin/bash

# eğer bc yüklü değilse yazılım deposundan yüklemeniz gerekebilir.
# bazı işletim sistemlerinde yüklü olmayabiliyor.

#man bc # özelliklerine bakalım

echo 25.5 ve 5

echo "25.5+5" | bc
echo "25.5-5" | bc
echo "25.5*5" | bc
echo "25.5/5" | bc #bölümü tam sayı gösterecek.
echo "scale=2;25.5/5" | bc #scale=2 virgülden sonra 2 basamak göster demektir.
echo "scale;25.5%5" | bc

#karekök işlemi
sayi1=4.32
echo "scale=4; sqrt(6)" | bc -l #-l library yani math kütüphanesini belirtir.
echo "scale=4; $sayi1^3" | bc -l #örnek küp alma
#üs alma işlemi
echo "scale=3; 3^4" | bc -l
