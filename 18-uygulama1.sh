#! /bin/bash

# Argümanlar ile ilgili uygulama 
# ARGÜMANLAR PROGRAM ÇALIŞTIRILIRKEN SIRAYLA YANINNA YAZILIR
echo "$0 programını çalıştırdınız."
echo "İlk Argüman: $1"
echo "İkinci Argüman: $2"
echo "Üçüncü Argüman: $3"
echo "Bütün argümanlar $*"
echo "Argüman sayısı: $#"
shift
echo "$0 programını çalıştırdınız."
echo "İlk Argüman: $1"
echo "İkinci Argüman: $2"
echo "Üçüncü Argüman: $3"
echo "Bütün argümanlar $*"
echo "Argüman sayısı: $#"

# programın yanına argümanlar yazdığınızda göreceksininz ki 
# shift sadece argümanları kaydıracak program ismi aynı kalacak.
# argümanlardan ilkini ise hiç görmeyecek.