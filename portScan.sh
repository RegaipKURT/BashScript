#!/bin/bash

target=$1 # hedef ip // ilk argüman
minPort=$2 # port alt sınır // ikinci argüman
maxPort=$3 # port üst sınır // üçüncü argüman

# tarama fonksiyonu
function scanPorts
{
for ((counter=$minPort; counter<=$maxPort; counter++)) #min ve max port numaraları arasındaki tüm portları deneyeceğiz.
do
    # ilgili porta bilgi gönderip açıksa ekrana yazdıracağız.
	(echo >/dev/tcp/$target/$counter) > /dev/null 2>&1 && echo "$counter open"
done
}

scanPorts
