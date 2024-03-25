#!/bin/bash

wget https://raw.githubusercontent.com/TScci/threatips/main/threatips.txt

awk 'NR<=1000' threatips.txt > ipset1k.txt
awk 'NR>=1001 && NR<=2000' threatips.txt > ipset2k.txt
awk 'NR>=2001 && NR<=3000' threatips.txt > ipset3k.txt
awk 'NR>=3001 && NR<=4000' threatips.txt > ipset4k.txt
awk 'NR>=4001 && NR<=5000' threatips.txt > ipset5k.txt
awk 'NR>=5001 && NR<=6000' threatips.txt > ipset6k.txt
