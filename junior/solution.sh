#!/usr/bin/bash
awk '$0 ~ /10.1.192.38/ {print $7}' log.txt | awk '{print $1}' FS=\& | awk '{print $2}' FS=\? | sed -e "s/^.....//;s/\/$//" | sort