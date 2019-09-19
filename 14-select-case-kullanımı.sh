#! /bin/bash

# SELECT KULLANIMI
# select genelde case ile birlikte kullanılır.
#düz halini anlamak için yorum kısmını çıkarıp deneyebilirsiniz
<< --yorum
iller=("Ankara" "İzmir" "İstanbul" "Bursa" "Eskişehir")

select il in ${iller[*]}; do
	echo "Seçilen il $il"
done
--yorum

iller=("Ankara" "İzmir" "İstanbul" "Bursa" "Eskişehir")

select il in ${iller[*]}; do
	case $il in
		Ankara )
			echo "$il Türkiye'nin Başkentidir.";;
		İstanbul )
			echo "$il Türkiye'nin en büyük şehridir.";;
		İzmir )
			echo "$il Türkiye'nin İncisidir.";;
		Bursa )
			echo "$il Osmanlı'ya Başkentlik yapmıştır.";;
		Eskişehir )
			echo "$il En Güzel Şehirlerimizdendir.";;
		* )
			echo "Yanlış Bir Seçim Yapıldı."
	esac
done

