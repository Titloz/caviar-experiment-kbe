#!/bin/bash

# The first argument is the timeout duration in seconds
# if it is a number

for x in $(ls const_typed50/twee/)
do 
    echo Starting with const_typed50/twee/$x:
    python3 simpl.py rules.p -F const_typed50/twee/$x > ./const_typed50/result_twee/$x
done

for x in $(ls const_typed100/twee/)
do 
    echo Starting with const_typed100/twee/$x:
    python3 simpl.py rules.p -F const_typed100/twee/$x > ./const_typed100/result_twee/$x
done

for x in $(ls const_typed500/twee/)
do 
    echo Starting with const_typed500/twee/$x:
    python3 simpl.py rules.p -F const_typed500/twee/$x > ./const_typed500/result_twee/$x
done

for x in $(ls const_typed1000/twee/)
do 
    echo Starting with const_typed1000/twee/$x:
    python3 simpl.py rules.p -F const_typed1000/twee/$x > ./const_typed1000/result_twee/$x
done

#for x in $(ls typed_terms5000/twee/)
#do 
#    echo Starting with typed_terms5000/twee/$x:
#    python3 simpl.py rules.p -F typed_terms5000/twee/$x > ./typed_terms5000/result_twee/$x
#done