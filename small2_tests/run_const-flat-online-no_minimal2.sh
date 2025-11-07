#!/bin/bash

echo Starting generation in const/flat/online/no_minimal/size100/
python3 ../termgen.py const/flat/online/no_minimal/size100/funexpr/ -n 100 -v 2
echo Starting generation in const/flat/online/no_minimal/size1000/
python3 ../termgen.py const/flat/online/no_minimal/size1000/funexpr/ -n 1000 -v 2
echo Starting translation to twee in const/flat/online/no_minimal/size100/
python3 ../translate_sterms.py const/flat/online/no_minimal/size100/ -t
echo Starting translation to caviar in const/flat/online/no_minimal/size100/
python3 ../translate_sterms.py const/flat/online/no_minimal/size100/ -s
echo Storing in csv in const/flat/online/no_minimal/size100/sexpr/
python3 ../store_in_csv.py -d const/flat/online/no_minimal/size100/sexpr/
echo Starting translation to twee in const/flat/online/no_minimal/size1000/
python3 ../translate_sterms.py const/flat/online/no_minimal/size1000/ -t
echo Starting translation to caviar in const/flat/online/no_minimal/size1000/
python3 ../translate_sterms.py const/flat/online/no_minimal/size1000/ -s
echo Storing in csv in const/flat/online/no_minimal/size1000/sexpr/
python3 ../store_in_csv.py -d const/flat/online/no_minimal/size1000/sexpr/
cd ../../caviar_consistent/
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv with 1s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 1) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_1s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec1.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec1.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec1.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_1s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv with 3s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 3) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_3s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec3.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec3.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec3.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_3s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv with 10s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 10) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_10s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec10.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec10.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/exec_caviar/exec10.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size100/result_caviar_10s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv with 1s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 1) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_1s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec1.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec1.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec1.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_1s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv with 3s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 3) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_3s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec3.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec3.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec3.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_3s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv with 10s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 10) > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_10s/res.txt' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec10.sh
chmod +x ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec10.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/exec_caviar/exec10.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/const/flat/online/no_minimal/size1000/result_caviar_10s/time.txt
cd ../caviar_random_terms/small2_tests/
