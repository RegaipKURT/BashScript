#! /bin/bash

# FONKSİYONLARDA LOCAL VE GLOBAL DEĞİŞKENLER

<< --ACIKLAMA

Local Değişken: Local değişken fonksiyonlar içinde kullanılan değişkendir.
Global Değişken: Global değişkenler fonksiyon dışında tanımlanan değişkenlerdir.

Local ve Global değişkenler arasında şöyle bir bağlantı ve sorun mevcut:
Eğer biz local ve global değişkeni aynı isim ile kullanırsak,
fonksiyon çalıştıktan sonra local değişkenin değeri global değişkene atanmış olur.
Aşağıda bunun nasıl olduğunu ve nasıl düzeltileceğini anlatacağız.

--ACIKLAMA


function Merhaba(){
	isim=$1 # fonksiyonun yanına yazdığımız değeri isme atadık
	echo "Merhaba $isim"
}

isim="Kemal"
echo "Fonksiyon çalışmadan önce global isim değişkeni: $isim"
Merhaba Mustafa 
echo "Fonksiyon çalıştıktan sonra global isim değişkeni: $isim"

<< --yorum
BUrada hem fonksiyona nasıl parametre verileceğini gördük,
Hem de Local ve Global değişkenleri öğrenmiş ve bu değişkenlerle
ilgili karşılaştığımız bir sorunu gördük.
Bu sorunu local değişkenin başına fonksiyon içinde "local" yazarak çözebiliriz.
Örnek olarak aynı kodu kopyalayıp local olarak belirtilerek aşağıya yazalım  
--yorum

echo
echo "---------------Local Değişken Belirtildikten Sonra-----------------"
echo


function Merhaba(){
	local isim=$1 # fonksiyonun yanına yazdığımız değeri isme atadık
	echo "Merhaba $isim"
}

isim="Kemal"
echo "Fonksiyon çalışmadan önce global isim değişkeni: $isim"
Merhaba Mustafa 
echo "Fonksiyon çalıştıktan sonra global isim değişkeni: $isim"