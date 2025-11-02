import random
import argparse


def generate(n_nodes: int, n_inputs: int, operators: list[tuple[str, int]]):
    def recurse(n: int):
        if n == 0:
            input = random.choice(range(n_inputs))
            return f'v{input}'
        else:
            op, arity = random.choice(operators)
            sub = ()
            n = n - 1
            for i in range(arity - 1):
                size = random.choice(range(n + 1))
                sub += (recurse(size), )
                n = n - size
            return (op,) + sub + (recurse(n), )
    return recurse(n_nodes)


def generate_alt(n_nodes: int, n_inputs: int, operators: list[tuple[str, int]]):
    def recurse(n: int):
        if n == 0:
            varorconst = random.choice(range(2))
            if varorconst == 0: 
                input = random.choice(range(n_inputs))
                return f'v{input}'
            else:
                number = random.choice(range(100)) 
                is_pos = random.choice(range(2))
                if is_pos == 0:
                    return "NUMNEG" + str(number)
                else:
                    return "NUM" + str(number)
        else:
            op, arity = random.choice(operators)
            n = n - 1
            sub = op + "(" 
            for i in range(arity - 1):
                size = random.choice(range(n+1))
                n -= size
                sub = sub + recurse(size) +","
            sub = sub + recurse(n) +")"
            return sub
    return recurse(n_nodes)
                
bool_language = [("AND",2),("EQ",2),("NE",2),("LE",2),("LT",2),("MIN",2),("MAX",2),
                ("OR",2),("GT",2),("GE",2),("NOT",1)] # boolean subpart of the caviar language
int_language = ["PLUS","SUB","MUL","DIV","MOD","ABS"]

def generate_typed_term(nb_nodes, nb_vars=5):
    def random_bool_term(n):
        if n==0:
            b = random.choice(range(2))
            if b:
                k = random.choice(range(nb_vars))
                return "v"+str(k)
            else:
                k = random.choice(range(1))
                return "NUM"+str(k)
        else:
            op = random.choice(range(11))
            if op==0:
                #and
                k = random.choice(range(n))
                return "AND("+random_bool_term(k)+","+random_bool_term(n-1-k)+")"
            elif op ==1:
                #eq
                k = random.choice(range(n))
                return "EQ("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==2:
                #ne
                k = random.choice(range(n))
                return "NE("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==3:
                #le
                k = random.choice(range(n))
                return "LE("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==4:
                #lt
                k = random.choice(range(n))
                return "LT("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==5:
                #min
                k = random.choice(range(n))
                return "MIN("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==6:
                #max
                k = random.choice(range(n))
                return "MAX("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==7:
                #or
                k = random.choice(range(n))
                return "OR("+random_bool_term(k)+","+random_bool_term(n-1-k)+")"
            elif op==8:
                #gt
                k = random.choice(range(n))
                return "GT("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==9:
                #ge
                k = random.choice(range(n))
                return "GE("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            else:
                #not
                return "NOT("+random_bool_term(n-1)+")"
            
    def random_int_term(n):
        if n==0:
            b = random.choice(range(2))
            if b:
                k = random.choice(range(nb_vars))
                return "v"+str(k)
            else:
                k = random.choice(range(1))
                return "NUM"+str(k)
        else:
            op = random.choice(range(6))
            if op==0:
                #abs
                return "ABS("+random_int_term(n-1)+")"
            elif op==1:
                #add
                k = random.choice(range(n))
                return "PLUS("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==2:
                #sub
                k = random.choice(range(n))
                return "SUB("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==3:
                #mul
                k = random.choice(range(n))
                return "MUL("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            elif op==4:
                #div
                k = random.choice(range(n))
                return "DIV("+random_int_term(k)+","+random_int_term(n-1-k)+")"
            else:
                #mod 
                k = random.choice(range(n))
                return "MOD("+random_int_term(k)+","+random_int_term(n-1-k)+")"
    return random_bool_term(nb_nodes)

"""
parser = argparse.ArgumentParser(description='Generate random terms')
parser.add_argument('-n', '--nodes', type=int, required=True, help='number of interior nodes')
parser.add_argument('-i', '--inputs', type=int, required=True, help='number of inputs')
parser.add_argument('-o', '--operators', type=str, required=True, help='operators with their arities (e.g. add:2,sub:2,neg:1)')
args = parser.parse_args()

ops = [ a.split(':') for a in args.operators.split(',') ]
ops = [ (f.strip(), int(a.strip())) for f, a in ops ]"""

"""res = generate(args.nodes, args.inputs, ops)
res = str(res).replace(',', '').replace(r"'", '')
print(res)"""

"""res = generate_alt(args.nodes, args.inputs, ops)
print(res)"""

def create_term_set_random(nb_terms, size_max, n_inputs, operators):
    return [generate_alt(random.choice(range(1, size_max+1)), n_inputs, operators) for _ in range(nb_terms)]

def create_term_set_fixed(nb_terms, fixed_size, n_inputs, operators):
    return [generate_alt(fixed_size, n_inputs, operators) for _ in range(nb_terms)]

#res_fixed = create_term_set_fixed(5000, args.nodes, args.inputs, ops)
#res_random = create_term_set_random(5000, args.nodes, args.inputs, ops)
"""print(res_fixed)"""

def write_files(directory, list_terms):
    for i in range(5):
        for j in range(10):
            for k in range(10):
                for l in range(10):
                    filename = directory + str(i) + str(j) + str(k) + str(l) + ".txt" #str(i) +
                    with open(filename, "w", encoding="utf-8") as f:
                        f.write(list_terms[i*1000+j*100+k*10+l]) #i*1000+

def create_term_caviarbased(caviar_directory, nb):
    # goal: generate a random term which has nb holes
    # and then replace each hole by a random term from caviar
    language = [("AND",2),("EQ",2),("NE",2),("LE",2),("LT",2),("MIN",2),("MAX",2),
                ("OR",2),("GT",2),("GE",2),("NOT",1)] # boolean subpart of the caviar language
    def recurse(n):
        if n == 0:
            b = random.choice(range(1))
            if b:
                return "NUM1"
            else:
                return "NUM0"
        elif n == 1:
            b = random.choice(range(1))
            if b:
                return "$"
            else:
                return "NOT($)"
        else: 
            op, arity = language[random.choice(range(11))]
            if arity == 1:
                new_op, _ = language[random.choice(range(10))]
                left = random.choice(range(1,n))
                right = n - left 
                return "NOT("+new_op+"("+recurse(left)+","+recurse(right)+"))"
            left = random.choice(range(1,n))
            right = n - left 
            return op + "(" + recurse(left) + "," + recurse(right) + ")"
    hole_term = recurse(nb)
    hole_list = hole_term.split("$")
    holes = []
    for i in range(len(hole_list)-1):
        id = str(random.choice(range(1,5000)))
        if len(id) == 1:
            id = "000"+id 
        elif len(id) == 2:
            id = "00"+id 
        elif len(id) == 3:
            id = "0"+id
        filename = caviar_directory+id+".txt"
        with open(filename, "r", encoding="utf-8") as f:
            term =  f.readline()
        # maybe translate the term ? hopefully not
        holes.append(term)
    # and then mix it up
    holes.append("")
    end_term = ""
    for i in range(len(holes)):
        end_term += hole_list[i] + holes[i]
    return end_term


#write_files("./random_caviar_size5000/", res_random)
#write_files("./fixed_caviar_size5000/", res_fixed)

def generate_typed_terms(directory, nb_nodes, nb_vars=5):
    return write_files(directory, [generate_typed_term(nb_nodes,nb_vars) for _ in range(5000)])

generate_typed_terms("./typed_terms5000/funexpr/", 5000)