#! /bin/bash -x

# DEBUGGING - HATA AYIKLAMA

<< --DEBUGGING

Bash içinde kodumuzu adım adım çalıştırarak 
hata aldığı yerde bize söylemesini sağlayabiliriz.

Bunu yapmamızın sebebi hatanın tam olarak alındığı noktayı bulmaktır.

Örnek olarak şöyle bir kod yazmış olalım:

sayi=0

while (($sayi<=10); do
	echo $sayi
	sleep 1
	sayi=$((sayi+1))
done

Yukarıdaki kodumuzda while satırında bir parantez eksik.
Fakat biz kodu hata ayıklamadan çalıştırınca  bize;

done satırında hata aldığını söyleyecek. Oysa hatalı olan kısım parantezler.

Bunu çözmek için şöyle bir hata ayıklama modu uygulayabiliriz:

Bunun 3 tane yolu vardır:

------ 1.YOL------ 
Bash içinde

bash -x ./script_adi

bunu yazdığımızda kodu satır satır işletecek ve hata aldığı yeri söyleyecek.

------ 1.YOL------ 

------ 2.YOL------ 
en baştaki bin/bash ifadesinin yanına -x koyarak da çalıştırabiliriz.

ben şu an -x eklediğim için kendisi debugging yapıp hatayı gösterecek.

-x kısmını silerek farkı görebiliriz.

------ 2.YOL------ 

------ 3.YOL------
 Sadece belirli bir aralıkta hata ayıklama yaptımak istersek:

set -x
debugging edilecek kodlar
set +x

Yukarıdaki şekilde yazarsak sadece set ksıımları arasında kalan kodlar için
hata ayıklama yapılır. Bu bize kod içinde istediğimiz kısmlarda debugging yapma imkanı verir. 
Aşağıda buna kod içinde örnek verelim

--DEBUGGING

sayi=0


while (($sayi<=10)); do
	echo $sayi
	sleep 1
	sayi=$((sayi+1))
done
