#! /bin/bash

# FONKSİYONLAR
# Fonksiyonalr 2 türlü yazılabilir.

# 1. şekilde function etiketiyle tanımlanabilir.
function Merhaba(){
	echo "Merhaba $isim"
}

read -p "Lütfen isim giriniz: " isim

Merhaba

# 2. şekilde ise function kullanmaya gerek yoktur.

merhaba(){
	echo "Merhaba $isim"
}

merhaba


# Farklı fonksiyon tanımlama şekilleri
<< --yorum

# 1.
function_name () {
  commands
}

# 2.
function_name () { commands; }

# 3.
function function_name {
  commands
}

# 4.
function function_name { commands; }

--yorum
