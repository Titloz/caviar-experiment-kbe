#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/no_flat/online/no_minimal/size1000/sexpr/terms.csv 100000 200000 3) > ../caviar_random_terms/small2_tests/const/no_flat/online/no_minimal/size1000/result_caviar_3s/res.txt
