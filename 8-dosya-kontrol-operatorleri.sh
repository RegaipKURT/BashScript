#! /bin/bash

echo -e "Aranacak dosyanın adını giriniz: \c"
# -e ve \c ile imlecin alt satıra geçmesini engelledik.
read dosya_adi

<< --yorum
-e --> exist yani var ise true döner
-f --> dosya var ve regular file ise true döner
-w --> dosya var ve write hakkı var ise true döner
-r --> dosya var ve read hakkı var ise true döner
-x --> dosya var ve executable hakkı var ise true döner
-d --> dosya var ve bir klasör ise true döner
-s --> dosya varsa ve içeriği dolu ise true döner
--yorum

#başına ve sonuna yıldız koyarak o ifadeyi içeren dosyalara da bakabiliriz.
#şimdi düz yapalım bir sonraki örnekte * ile deneme yapalım.
if [ -e "$dosya_adi" ]; then
	echo "$dosya_adi isimli dosya bulundu!"
else
	echo "$dosya_adi --> Böyle bir dosya mevctu değil!"
fi

echo -e "Yazılabir dosya aramak için isim giriniz: \c"
read dosya_adi
#başına ve sonuna yıldız koyarak ifadenin önce ve sonrasına da bakacağız.
if [ -x *"$dosya_adi"* ]; then
	echo "$dosya_adi içeren veya bu isimde bir yazılabilir dosya bulundu!"
else
	echo "$dosya_adi --> Dosya yazılabir değil veya  mevcut değil!"
fi

# ifadeler bir arada da kullanılabilir.
echo -e "Yazılabir ve dolu dosya aramak için isim giriniz: \c"
read dosya_adi
#başına ve sonuna yıldız koymayacağız tam dosya adını girmek gerekiyor.
if [[ -x "$dosya_adi" ]] && [[ -s "$dosya_adi" ]]; then
	echo "$dosya_adi isminde yazılabilir ve dolu bir dosya bulundu!"
else
	echo "$dosya_adi --> Dosya yazılabir değil veya  dolu değil!"
fi