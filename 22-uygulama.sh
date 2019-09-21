#! /bin/bash

x="$1"
y="$2"

if [[ $# != 2 ]]; then
	echo "Lütfen iki tane sayı giriniz!"
	exit 1
fi

if ! [[ "$x" =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
	echo "Hatalı Sayı = $x"
	exit 1
fi

if ! [[ "$y" =~ ^[:blank:]*[0-9]*[:blank:]*$ ]]; then
	echo "Hatalı Sayı = $y"
	exit 1
fi


islem(){
	echo "Toplam: $((x+y))"
	echo "Çarpım: $((x*y))"
	echo "Fark: $((x-y))"
	echo "Bölüm: $((x/y))"
}

islem 