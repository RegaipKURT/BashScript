#! /bin/bash

# BREAK, CONTINUE, UNTIL KULLANIMI

#break döngüden çıkarır
# 6'ya gelince dönüden çıkacak
for i in {1..10}; do
	if [[ $i > 5 ]]; then
		break	
	fi
	echo "$i"
done

echo "Break Bitti..."

#continue döngünün aşağısına devam etmeden tekrar döngünün üstüne çıkar ve devam eder.
#yani aşağıdaki döngüde 5 ve 7 ekrana yazılmayacak.
for i in {1..10}; do
	if [[ $i = 5 || $i = 7 ]]; then
		continue
	fi
	echo "$i"
done

echo "Continue Bitti..."

# until (-e kadar) kullanımı (while benzeridir.)

i=1
until (( $i > 7 )); do
	echo "$i"
	i=$((i+1))
done
echo "Until Bitti..."