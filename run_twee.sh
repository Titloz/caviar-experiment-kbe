#!/bin/bash

# The first argument is the timeout duration in seconds
# if it is a number

for x in $(ls typed_terms50/twee/)
do 
    echo Starting with typed_terms50/twee/$x:
    python3 simpl.py rules.p -F typed_terms50/twee/$x > ./typed_terms50/result_twee/$x
done

for x in $(ls typed_terms100/twee/)
do 
    echo Starting with typed_terms100/twee/$x:
    python3 simpl.py rules.p -F typed_terms100/twee/$x > ./typed_terms100/result_twee/$x
done

for x in $(ls typed_terms500/twee/)
do 
    echo Starting with typed_terms500/twee/$x:
    python3 simpl.py rules.p -F typed_terms500/twee/$x > ./typed_terms500/result_twee/$x
done

for x in $(ls typed_terms1000/twee/)
do 
    echo Starting with typed_terms1000/twee/$x:
    python3 simpl.py rules.p -F typed_terms1000/twee/$x > ./typed_terms1000/result_twee/$x
done

#for x in $(ls typed_terms5000/twee/)
#do 
#    echo Starting with typed_terms5000/twee/$x:
#    python3 simpl.py rules.p -F typed_terms5000/twee/$x > ./typed_terms5000/result_twee/$x
#done