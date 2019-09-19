#! /bin/bash

# WHILE KULLANIMI

i=1

# < veya <= kullanılınca hata veriyor.
while [[ $i -le 10 ]]; do
	echo "$i"
	i=$((i+1))
	sleep 0.1 # 0.1 saniye bekliyor
done