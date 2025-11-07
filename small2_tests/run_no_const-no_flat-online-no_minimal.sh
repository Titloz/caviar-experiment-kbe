#!/bin/bash

echo Starting generation in no_const/no_flat/online/no_minimal/size100/
python3 ../termgen.py no_const/no_flat/online/no_minimal/size100/funexpr/ -n 100 -v 2 -c
echo Starting generation in no_const/no_flat/online/no_minimal/size1000/
python3 ../termgen.py no_const/no_flat/online/no_minimal/size1000/funexpr/ -n 1000 -v 2 -c
echo Starting translation to twee in no_const/no_flat/online/no_minimal/size100/
python3 ../translate_sterms.py no_const/no_flat/online/no_minimal/size100/ -t
echo Starting translation to caviar in no_const/no_flat/online/no_minimal/size100/
python3 ../translate_sterms.py no_const/no_flat/online/no_minimal/size100/ -s
echo Storing in csv in no_const/no_flat/online/no_minimal/size100/sexpr/
python3 ../store_in_csv.py -d no_const/no_flat/online/no_minimal/size100/sexpr/
echo Starting translation to twee in no_const/no_flat/online/no_minimal/size1000/
python3 ../translate_sterms.py no_const/no_flat/online/no_minimal/size1000/ -t
echo Starting translation to caviar in no_const/no_flat/online/no_minimal/size1000/
python3 ../translate_sterms.py no_const/no_flat/online/no_minimal/size1000/ -s
echo Storing in csv in no_const/no_flat/online/no_minimal/size1000/sexpr/
python3 ../store_in_csv.py -d no_const/no_flat/online/no_minimal/size1000/sexpr/
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/00.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/00.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/00.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/00.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/00.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/00.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/00.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/00.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/00.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/01.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/01.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/01.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/01.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/01.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/01.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/01.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/01.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/01.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/02.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/02.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/02.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/02.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/02.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/02.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/02.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/02.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/02.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/03.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/03.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/03.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/03.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/03.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/03.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/03.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/03.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/03.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/04.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/04.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/04.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/04.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/04.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/04.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/04.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/04.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/04.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/05.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/05.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/05.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/05.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/05.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/05.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/05.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/05.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/05.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/06.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/06.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/06.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/06.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/06.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/06.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/06.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/06.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/06.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/07.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/07.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/07.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/07.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/07.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/07.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/07.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/07.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/07.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/08.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/08.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/08.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/08.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/08.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/08.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/08.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/08.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/08.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/09.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/09.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/09.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/09.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/09.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/09.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/09.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/09.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/09.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/10.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/10.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/10.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/10.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/10.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/10.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/10.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/10.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/10.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/11.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/11.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/11.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/11.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/11.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/11.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/11.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/11.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/11.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/12.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/12.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/12.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/12.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/12.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/12.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/12.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/12.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/12.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/13.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/13.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/13.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/13.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/13.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/13.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/13.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/13.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/13.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/14.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/14.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/14.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/14.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/14.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/14.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/14.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/14.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/14.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/15.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/15.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/15.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/15.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/15.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/15.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/15.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/15.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/15.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/16.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/16.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/16.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/16.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/16.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/16.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/16.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/16.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/16.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/17.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/17.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/17.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/17.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/17.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/17.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/17.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/17.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/17.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/18.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/18.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/18.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/18.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/18.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/18.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/18.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/18.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/18.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/19.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/19.txt -t 1 > no_const/no_flat/online/no_minimal/size100/result_twee_1s/19.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_1s/time19.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/19.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/19.txt -t 3 > no_const/no_flat/online/no_minimal/size100/result_twee_3s/19.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_3s/time19.txt
   echo Starting with no_const/no_flat/online/no_minimal/size100/twee/19.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size100/twee/19.txt -t 10 > no_const/no_flat/online/no_minimal/size100/result_twee_10s/19.txt' > no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size100/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size100/result_twee_10s/time19.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/00.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/00.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/00.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/00.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/00.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/00.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/00.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/00.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/00.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec00.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time00.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/01.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/01.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/01.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/01.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/01.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/01.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/01.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/01.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/01.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec01.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time01.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/02.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/02.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/02.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/02.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/02.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/02.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/02.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/02.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/02.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec02.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time02.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/03.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/03.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/03.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/03.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/03.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/03.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/03.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/03.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/03.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec03.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time03.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/04.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/04.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/04.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/04.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/04.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/04.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/04.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/04.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/04.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec04.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time04.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/05.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/05.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/05.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/05.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/05.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/05.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/05.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/05.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/05.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec05.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time05.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/06.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/06.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/06.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/06.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/06.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/06.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/06.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/06.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/06.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec06.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time06.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/07.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/07.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/07.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/07.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/07.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/07.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/07.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/07.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/07.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec07.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time07.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/08.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/08.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/08.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/08.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/08.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/08.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/08.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/08.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/08.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec08.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time08.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/09.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/09.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/09.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/09.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/09.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/09.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/09.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/09.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/09.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec09.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time09.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/10.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/10.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/10.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/10.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/10.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/10.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/10.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/10.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/10.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec10.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time10.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/11.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/11.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/11.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/11.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/11.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/11.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/11.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/11.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/11.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec11.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time11.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/12.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/12.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/12.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/12.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/12.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/12.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/12.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/12.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/12.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec12.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time12.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/13.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/13.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/13.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/13.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/13.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/13.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/13.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/13.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/13.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec13.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time13.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/14.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/14.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/14.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/14.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/14.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/14.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/14.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/14.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/14.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec14.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time14.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/15.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/15.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/15.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/15.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/15.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/15.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/15.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/15.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/15.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec15.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time15.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/16.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/16.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/16.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/16.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/16.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/16.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/16.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/16.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/16.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec16.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time16.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/17.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/17.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/17.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/17.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/17.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/17.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/17.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/17.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/17.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec17.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time17.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/18.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/18.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/18.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/18.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/18.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/18.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/18.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/18.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/18.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec18.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time18.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/19.txt with 1s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/19.txt -t 1 > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/19.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_1s/time19.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/19.txt with 3s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/19.txt -t 3 > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/19.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_3s/time19.txt
   echo Starting with no_const/no_flat/online/no_minimal/size1000/twee/19.txt with 10s :
   echo '#!/bin/bash

 python3 ../simpl.py ../rules.p -F no_const/no_flat/online/no_minimal/size1000/twee/19.txt -t 10 > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/19.txt' > no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
   chmod +x no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh
/usr/bin/time -v ./no_const/no_flat/online/no_minimal/size1000/exec_twee/exec19.sh 2>&1 | grep 'Maximum resident set size' > no_const/no_flat/online/no_minimal/size1000/result_twee_10s/time19.txt
cd ../../caviar_consistent/
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv with 1s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 1) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_1s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec1.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec1.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec1.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_1s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv with 3s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 3) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_3s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec3.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec3.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec3.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_3s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv with 10s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/sexpr/terms.csv 100000 500000 10) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_10s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec10.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec10.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/exec_caviar/exec10.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size100/result_caviar_10s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv with 1s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 1) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_1s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec1.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec1.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec1.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_1s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv with 3s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 3) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_3s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec3.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec3.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec3.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_3s/time.txt
echo Starting with ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv with 10s :
echo '#!/bin/bash

(./target/release/caviar simplify ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/sexpr/terms.csv 100000 500000 10) > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_10s/res.txt' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec10.sh
chmod +x ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec10.sh
sudo /usr/bin/time -v ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/exec_caviar/exec10.sh 2>&1 | grep 'Maximum resident set size' > ../caviar_random_terms/small2_tests/no_const/no_flat/online/no_minimal/size1000/result_caviar_10s/time.txt
cd ../caviar_random_terms/small2_tests/
