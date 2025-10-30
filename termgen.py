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
    #for i in range(5):
    for j in range(1):
        for k in range(10):
            for l in range(10):
                filename = directory + str(j) + str(k) + str(l) + ".txt" #str(i) +
                with open(filename, "w", encoding="utf-8") as f:
                    f.write(list_terms[j*100+k*10+l]) #i*1000+

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

hundred_terms = [create_term_caviarbased("../caviar-study/cp-data/data/", 100) for _ in range(100)]
write_files("./cavsize100/data/", hundred_terms)