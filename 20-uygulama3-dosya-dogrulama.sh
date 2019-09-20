#! /bin/bash

if [[ $# < 1 ]]; then
	echo "Lütfen dosya ismi giriniz!!!"
	echo "Kullanım Şekli: $0 Dosya Adı"
fi

dosya="$1"

if [[ -d "$dosya" ]]; then
	echo "$dosya bir klasördür."
elif [[ -f "$dosya" ]]; then
	echo "$dosya normal bir dosya."
elif [[ -e "$dosya" ]]; then
	echo "$dosya özel bir dosya."
else
	if (($#==1))
	then
	echo "$dosya isminde bir klasör veya dosya yok"
	fi
fi