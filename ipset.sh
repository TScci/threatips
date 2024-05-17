#!/bin/bash

wget https://raw.githubusercontent.com/TScci/threatips/main/threatips.txt

awk 'NR<=1000' threatips.txt > ipset1k.txt
awk 'NR>=1001 && NR<=2000' threatips.txt > ipset2k.txt
awk 'NR>=2001 && NR<=3000' threatips.txt > ipset3k.txt

