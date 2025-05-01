#!/bin/bash

file=$(cat Bad_IPs.txt)

for line in $file
do
        sudo ufw deny from "$line" to any port 22
done
