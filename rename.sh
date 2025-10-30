#!/bin/bash

for x in $(ls ../caviar-study/cp-data/data/)
do 
    number="${x:0:4}"
    mv ../caviar-study/cp-data/data/$x ../caviar-study/cp-data/data/$number.txt
done