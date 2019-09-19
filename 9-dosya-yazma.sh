#! /bin/bash

echo -e "Yazılacak dosyanın adını giriniz: \c"
# -e ve \c ile imlecin alt satıra geçmesini engelledik.
read dosya_adi

if [[ -f $dosya_adi ]]; then
	if [[ -w $dosya_adi ]]; then
		echo "Dosya mevcut ve yazılabilir."
		echo "İçerisine yazmak için bir şeyler yazın veya CTRL+D ile çıkın."
		cat >> $dosya_adi
	else
		echo "Dosya yazılabilir değil."
	fi
else
	echo "Dosya mevcut değil."
fi