import argparse


# this file should be parsing arguments so that I can launch all my tests

parser = argparse.ArgumentParser(description='Run the full experiments')
parser.add_argument('-c',"--noconst", action='store_true', required=False, help="no constants here")
parser.add_argument('-f',"--noflat", action='store_true', required=False, help="no flattening here")
parser.add_argument('-o',"--offline", action='store_true', required=False, help="precomputation here")
parser.add_argument('-m',"--nominimal", action='store_true', required=False, help="not the minimal ruleset, only consistent here")

args = parser.parse_args()

directory = ""
d2 = ""
if args.noconst:
    directory += "no_const/"
    d2 += "no_const-"
else:
    directory +="const/"
    d2 += "const-"
if args.noflat:
    directory += "no_flat/"
    d2 += "no_flat-"
else:
    directory += "flat/"
    d2 += "flat-"
if args.offline:
    directory += "offline/"
    d2 += "offline-"
else:
    directory += "online/"
    d2 += "online-"
if args.nominimal:
    directory += "no_minimal/"
    d2 += "no_minimal"
else:
    directory += "minimal/"
    d2 += "minimal"

def dir_size(size):
    return "size"+str(size)+"/"

def rtwee(timeout):
    return "result_twee_"+str(timeout)+"s/"

def rcaviar(timeout):
    return "result_caviar_"+str(timeout)+"s/"

def run_onedirectory(directory):
    sizes = [100, 1000] #50, 500,
    timeouts = [1, 3, 10] #, 20
    command = "#!/bin/bash\n\n"
    # first generate the 20 terms per size 
    for s in sizes:
        curr_dir = directory + dir_size(s)
        command += f"echo Starting generation in {curr_dir}\n"
        if args.noconst:
            command += f"python3 ../termgen.py {curr_dir}funexpr/ -n {s} -v 2 -c\n"
        else: 
            command += f"python3 ../termgen.py {curr_dir}funexpr/ -n {s} -v 2\n"

    # then for every size, translate to twee & caviar
    for s in sizes:
        curr_dir = directory + dir_size(s)
        command += f"echo Starting translation to twee in {curr_dir}\n"
        command += f"python3 ../translate_sterms.py {curr_dir} -t\n"
        command += f"echo Starting translation to caviar in {curr_dir}\n"
        command += f"python3 ../translate_sterms.py {curr_dir} -s\n"
        command += f"echo Storing in csv in {curr_dir}sexpr/\n"
        command += f"python3 ../store_in_csv.py -d {curr_dir}sexpr/\n"

    #then for every size, run twee for every timeout and store it
    for s in sizes:
        curr_dir = directory + dir_size(s)
        #command += f"for x in $(ls {curr_dir}twee/)\n"
        #command +="do\n"
        #command += "X=$x\n"
        #command += "    export X\n"
        for i in range(2):
            for j in range(10):
                file = str(i)+str(j)
                for t in timeouts:
                    # TODO offline. use -s substitutionfile in that case. not sure how that works
                    command += f"   echo Starting with {curr_dir}twee/{file}.txt with {t}s :\n"
                    if args.nominimal and not(args.noflat):
                        command += f"   echo '#!/bin/bash\n\n python3 ../simpl.py ../rules.p -F {curr_dir}twee/{file}.txt -t {str(t)} > {curr_dir}{rtwee(t)}{file}.txt' > {curr_dir}exec_twee/exec{file}.sh\n"
                        command += f"   chmod +x {curr_dir}exec_twee/exec{file}.sh\n"
                        #command += f"   mprof run ./{curr_dir}twee/exec$x.sh\n"
                        #command += f"   mprof peak\n"
                        command += f"(/usr/bin/time -v ./{curr_dir}exec_twee/exec{file}.sh 2>&1 | grep 'Maximum resident set size') > {curr_dir}{rtwee(t)}time{file}.txt\n" # 2>&1 | grep 'Maximum resident set size'
                    elif args.nominimal and args.noflat:
                        command += f"   echo '#!/bin/bash\n\n python3 ../simpl.py ../rules.p -F {curr_dir}twee/{file}.txt -t {str(t)} > {curr_dir}{rtwee(t)}{file}.txt' > {curr_dir}exec_twee/exec{file}.sh\n"
                        command += f"   chmod +x {curr_dir}exec_twee/exec{file}.sh\n"
                        #command += f"   mprof run ./{curr_dir}twee/exec$x.sh\n"
                        #command += f"   mprof peak\n"
                        command += f"/usr/bin/time -v ./{curr_dir}exec_twee/exec{file}.sh 2>&1 | grep 'Maximum resident set size' > {curr_dir}{rtwee(t)}time{file}.txt\n" #2>&1 | grep 'Maximum resident set size'
                    elif not(args.nominimal) and not(args.noflat):
                        command += f"   echo '#!/bin/bash\n\n python3 ../simpl.py ../caviar_consistent_min_1s.p -F {curr_dir}twee/{file}.txt -t {str(t)} > {curr_dir}{rtwee(t)}{file}.txt' > {curr_dir}exec_twee/exec{file}.sh\n"
                        command += f"   chmod +x {curr_dir}exec_twee/exec{file}.sh\n"
                        #command += f"   mprof run ./{curr_dir}twee/exec$x.sh\n"
                        #command += f"   mprof peak\n"
                        command += f"/usr/bin/time -v ./{curr_dir}exec_twee/exec{file}.sh 2>&1 | grep 'Maximum resident set size' > {curr_dir}{rtwee(t)}time{file}.txt\n" # 2>&1 | grep 'Maximum resident set size'
                    else:
                        command += f"   echo '#!/bin/bash\n\n python3 ../simpl.py ../caviar_consistent_min_1s.p -F {curr_dir}twee/{file}.txt -t {str(t)} -f > {curr_dir}{rtwee(t)}{file}.txt' > {curr_dir}exec_twee/exec{file}.sh\n"
                        command += f"   chmod +x {curr_dir}exec_twee/exec{file}.sh\n"
                        #command += f"   mprof run ./{curr_dir}twee/exec$x.sh\n"
                        #command += f"   mprof peak\n"
                        command += f"/usr/bin/time -v ./{curr_dir}exec_twee/exec{file}.sh 2>&1 | grep 'Maximum resident set size' > {curr_dir}{rtwee(t)}time{file}.txt\n" #2>&1 | grep 'Maximum resident set size'\n
                #command += "done\n"
                #command += f"mv *.dat {curr_dir}\n"
    # then for every size, run caviar for every timeout and store it
    if args.nominimal:
        command += "cd ../../caviar_consistent/\n"
    else:
        command += "cd ../../caviar_fixed_rules/\n"
    for s in sizes:
        curr_dir = "../caviar_random_terms/small2_tests/" + directory + dir_size(s)
        #command += f"for x in $(ls {curr_dir}sexpr/)\n"
        #command +="do\n"
        #command += "    export x"
        for t in timeouts:
            # TODO offline. use -s substitutionfile in that case. not sure how that works
            command += f"echo Starting with {curr_dir}sexpr/terms.csv with {t}s :\n"
            if args.nominimal: # flattening does not occur in caviar
                # cargo run --release simplify {curr_dir}sexpr/terms.csv 100000 500000 {str(t)} {curr_dir}{rcaviar(t)}/$x\n
                # cargo run --release
                command += f"echo '#!/bin/bash\n\n(./target/release/caviar simplify {curr_dir}sexpr/terms.csv 100000 500000 {str(t)}) > {curr_dir}{rcaviar(t)}res.txt' > {curr_dir}exec_caviar/exec{t}.sh\n"
                command += f"chmod +x {curr_dir}exec_caviar/exec{t}.sh\n"
                #command += f"   mprof run ./{curr_dir}sexpr/exec$x.sh\n"
                #command += f"   mprof peak\n"
                command += f"sudo /usr/bin/time -v {curr_dir}exec_caviar/exec{t}.sh 2>&1 | grep 'Maximum resident set size' > {curr_dir}{rcaviar(t)}time.txt\n" # 2>&1 | grep 'Maximum resident set size'
            else:
                command += f"echo '#!/bin/bash\n\n(./target/release/caviar {curr_dir}sexpr/terms.csv 100000 500000 {str(t)}) > {curr_dir}{rcaviar(t)}res.txt' > {curr_dir}exec_caviar/exec{t}.sh\n"
                command += f"chmod +x {curr_dir}exec_caviar/exec{t}.sh\n"
                #command += f"   mprof run ./{curr_dir}sexpr/exec$x.sh\n"
                #command += f"   mprof peak\n"
                command += f"sudo /usr/bin/time -v {curr_dir}exec_caviar/exec{t}.sh 2>&1 | grep 'Maximum resident set size' > {curr_dir}{rcaviar(t)}time.txt \n" #exec_caviar/exec.sh 2>&1 | grep 'Maximum resident set size'
        #command += "done\n"
        #command += f"mv *.dat {curr_dir}\n"
    command += "cd ../caviar_random_terms/small2_tests/\n"

    with open(f"run_{d2}.sh", "w", encoding="utf-8") as f:
        f.write(command)
    print("======================OVER======================")

def clean(directory):
    sizes = [50, 100, 500, 1000]
    timeouts = [1, 3, 10, 20]
    commands = "#!/bin/bash\n\n"
    commands += f"cd {directory}\n"
    for s in sizes:
        commands += f"cd size{s}/\n"
        commands += f"cd funexpr/ && rm * && cd ../sexpr/ && rm * && cd ../twee/ && rm * && cd ../\n"
        commands += f"cd exec_caviar/ && rm * && cd ../exec_twee/ && rm * && cd ../\n"
        for t in timeouts:
            commands += f"cd result_caviar_{t}s/ && rm * && cd ../\n"
            commands += f"cd result_twee_{t}s/ && rm * && cd ../\n"
        commands += f"cd ../\n"
    with open(f"clean_{d2}.sh", "w", encoding="utf-8") as f:
        f.write(commands)
    

run_onedirectory(directory)
#clean(directory)