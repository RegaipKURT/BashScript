#! /bin/bash

sayi=$1
if [[ "$sayi" =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
	((i=1))
	((faktoriyel=1))
	while ((i<=sayi)); do
		((faktoriyel=faktoriyel*i))
		((i++))
	done
else
	echo "Hatalı Sayı! --> $sayi"
	echo "Kullanım şekli: $0 SAYI"
	exit 1
fi

echo "$sayi faktoriyel = $faktoriyel"