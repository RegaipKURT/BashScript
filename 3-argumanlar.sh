#! /bin/bash

echo $1 $2 $3 $4 #konsoldan 4 tane argüman alacak ve yazdıracak
#burada 0. argüman programın ismi olacak direk. o yüzden 1 den başladık.
#argümanlar program ismi yazıldığında yanına eklenir

echo $@ # alınan bütün argümanları yazdıracak
echo $# #alınan argüman sayısını yazdıracak

dizi=($@) #bütün argümanları diziye atadık
echo $* # argümanların tamamını yazdıracak
echo ${dizi[0]} ${dizi[3]} #dizinin 0 ve 3. elemanını yazdıracak.