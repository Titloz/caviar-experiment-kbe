#!/bin/bash

(ls
 cargo run --release simplify ../caviar_random_terms/small2_tests/no_const/flat/online/no_minimal/size500/sexpr/terms.csv 100000 500000 20) > ../caviar_random_terms/small2_tests/no_const/flat/online/no_minimal/size500/result_caviar_20s/res.txt
