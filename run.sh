#!/bin/bash

#rm output.txt

for x in $(ls cavsize100/data/)
do
    echo Starting with cavsize100/data/$x:
    #timeout 1.0s ../knuth_bendix_egraph/target/release/main -r "rules.rule" -t "fixed_caviar_size50/funexpr/vars_diff/$x" > r$x.txt
    TIMEOUT=30 ../knuth_bendix_egraph/target/release/main -r "rules.rule" -t "cavsize100/data/$x" > cavsize100/result-kbe30/$x
    #t=$(cat r$x.txt | grep -A 1 "Extracted term" | tail -n 1)
    #hal="${x:5:1}"
    #if [[ "NUM$hal" == "$t" ]]; then
    #    echo Success
    #    echo Success >> output.txt
    #fi
    #echo "$t\n" >> output.txt
    #echo "$t\n"
done