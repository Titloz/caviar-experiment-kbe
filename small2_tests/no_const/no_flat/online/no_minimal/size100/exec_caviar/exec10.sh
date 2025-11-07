#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 10) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_10s/res.txt
