#!/bin/bash

c=0
> frNumToName.txt
for i in $(cat frToNum.txt); do
    (( c++ ));
    echo "$c $i" >> 'frNumToName.txt';
done
