#!/bin/bash

rm output.txt

for x in $(ls fixed_caviar_size50/funexpr/vars_diff/)
do
    echo Starting with fixed_caviar_size50/funexpr/vars_diff/$x:
    timeout 1.0s ../knuth_bendix_egraph/target/release/main -r "rules.rule" -t "fixed_caviar_size50/funexpr/vars_diff/$x" > r$x.txt
    #t=$(cat r$x.txt | grep -A 1 "Extracted term" | tail -n 1)
    #hal="${x:5:1}"
    #if [[ "NUM$hal" == "$t" ]]; then
    #    echo Success
    #    echo Success >> output.txt
    #fi
    #echo "$t\n" >> output.txt
    #echo "$t\n"
done