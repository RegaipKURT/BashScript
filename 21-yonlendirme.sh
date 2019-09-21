#! /bin/bash

# YÖNLENDİRME
# Input ve Output'lar Nasıl Yönlendirilir?

echo "

	2 tane iletişim kanalımız vardır: Input ve Ouptput

	Input: Klavye, Output: Çıktı 

	Çıktı da yine 2'ye ayrılır: Hatalar ve Normal Çıktı.

	Input: ---> Standart Input: 0 ---> Klavye
	Output ---> Standart Output: 1 ile belirtilir.
	Output ---> Strandart Error: 2 ile belirtlir.

	1'i yani standart çıktıyı özel olarak belirtmemize gerek yok.
	> veya >> işareti otomatik olarak 1'i alır zaten.

	komut > dosya ----> Komutun çıktısı dosya içeriği temizlenerek 
	dosyaya yazılır

	komut >> dosya ----> Komutun çıktısı dosyanın sonuna eklenir. 
	Dosya içeriği silinmez.

	komut < dosya ----> Komut girdisini dosyadan alır.
	komut >| dosya ----> noclobber ayarlanmış olsa bile 
	komut çıktısı dosyaya yazılır.

	komut 2> dosya ----> 2 hatayı gösteriyordu. 
	Komutun hata çıktısını dosyaya yazar.

	komut &> dosya ----> Komut hataları ile normal çıktı 
	aynı dosyaya yazılır.

	komut &>> dosya ----> Komut hataları ve çıktısı 
	dosya sonuna eklenir.

	komut > dosya_cikti 2> dosya_hata ---> 
	Çıktı dosya_cikti, hatalar dosya_hata içine yazılır.

"