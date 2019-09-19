#! /bin/bash

# DİZİLER

OS=( "Linux" 'Windows' 'MacOS' ) #ÇİFT VEYA TEK TIRNAK İÇİNDE YAZILABİLİR.
#PARANTEZLERİN BAŞINDA VE SONUNDA ELEMANLARDAN ÖNCE BOŞLUKLAR OLMALI
#BAZI İŞLETİM SİSTEMLERİNDE BOŞLUK OLMADAN DA ÇALIŞIRKEN BAZILARINDA HATA VERİR.

echo ${OS[@]} #TÜM DİZİ ELEMANLARINI GÖSTERİR
echo ${OS[*]} #TÜM DİZİ ELEMANLARINI GÖSTERİR

echo "İndeks NUmaraları: " ${!OS[*]} #DİZİNİN ELEMANLARININ İNDEKSİNİ GÖSTERİR
echo "Eleman Sayısı: " ${#OS[*]} #DİZİNİN ELEMAN SAYISINI GÖSTERİR

# ELEMAN EKLEME
OS[3]="Unix" # 3. indekse yeni eleman ekledik
echo ${OS[@]} #TÜM DİZİ ELEMANLARINI GÖSTERİR
echo "Eleman Sayısı: " ${#OS[*]} #DİZİNİN ELEMAN SAYISINI GÖSTERİR

# ELEMAN SİLME
unset OS[1] #diziden 1. elemanı sildik
echo ${OS[@]} #TÜM DİZİ ELEMANLARINI GÖSTERİR
echo "İndeks NUmaraları: " ${!OS[*]} #indeks numarasını da çıkardı.
