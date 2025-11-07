#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 3) > ../caviar_random_terms/small2_tests/no_const/flat/online/no_minimal/size100/result_caviar_3s/res.txt
