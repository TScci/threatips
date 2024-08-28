#!/bin/bash

mkdir hfish
mkdir ustc

wget https://raw.githubusercontent.com/TScci/threatips/main/threatips.txt
wget https://blackip.ustc.edu.cn/list.php?txt -O ustc_ip.txt

grep -v -E '([0-9a-fA-F:]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F:]{1,4}:){1,7}:|([0-9a-fA-F:]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F:]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F:]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F:]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F:]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F:]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F:]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])' ustc.txt > ustc_ipv4.txt

awk 'NR<=1000' threatips.txt > ./hfish/ipset1k.txt
awk 'NR>=1001 && NR<=2000' threatips.txt > ./hfish/ipset2k.txt
awk 'NR>=2001 && NR<=3000' threatips.txt > ./hfish/ipset3k.txt

awk 'NR<=1000' ustc_ipv4.txt > ustc1k.txt
awk 'NR>1000 && NR<=2000' ustc_ipv4.txt > ./ustc/ustc2k.txt
awk 'NR>2000 && NR<=3000' ustc_ipv4.txt > ./ustc/ustc3k.txt
awk 'NR>3000 && NR<=4000' ustc_ipv4.txt > ./ustc/ustc4k.txt
awk 'NR>4000 && NR<=5000' ustc_ipv4.txt > ./ustc/ustc5k.txt
awk 'NR>5000 && NR<=6000' ustc_ipv4.txt > ./ustc/ustc6k.txt
awk 'NR>6000 && NR<=7000' ustc_ipv4.txt > ./ustc/ustc7k.txt
awk 'NR>7000 && NR<=8000' ustc_ipv4.txt > ./ustc/ustc8k.txt
awk 'NR>8000 && NR<=9000' ustc_ipv4.txt > ./ustc/ustc9k.txt
awk 'NR>9000 && NR<=10000' ustc_ipv4.txt > ./ustc/ustc10k.txt
