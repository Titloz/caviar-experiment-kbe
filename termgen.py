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
                


parser = argparse.ArgumentParser(description='Generate random terms')
parser.add_argument('-n', '--nodes', type=int, required=True, help='number of interior nodes')
parser.add_argument('-i', '--inputs', type=int, required=True, help='number of inputs')
parser.add_argument('-o', '--operators', type=str, required=True, help='operators with their arities (e.g. add:2,sub:2,neg:1)')
args = parser.parse_args()

ops = [ a.split(':') for a in args.operators.split(',') ]
ops = [ (f.strip(), int(a.strip())) for f, a in ops ]

"""res = generate(args.nodes, args.inputs, ops)
res = str(res).replace(',', '').replace(r"'", '')
print(res)"""

"""res = generate_alt(args.nodes, args.inputs, ops)
print(res)"""

def create_term_set_random(nb_terms, size_max, n_inputs, operators):
    return [generate_alt(random.choice(range(1, size_max+1)), n_inputs, operators) for _ in range(nb_terms)]

def create_term_set_fixed(nb_terms, fixed_size, n_inputs, operators):
    return [generate_alt(fixed_size, n_inputs, operators) for _ in range(nb_terms)]

res_fixed = create_term_set_fixed(5000, args.nodes, args.inputs, ops)
res_random = create_term_set_random(5000, args.nodes, args.inputs, ops)
"""print(res_fixed)"""

def write_files(directory, list_terms):
    for i in range(5):
        for j in range(10):
            for k in range(10):
                for l in range(10):
                    filename = directory + str(i) + str(j) + str(k) + str(l) + ".txt"
                    with open(filename, "w", encoding="utf-8") as f:
                        f.write(list_terms[i*1000+j*100+k*10+l])

write_files("./random_caviar_size5000/", res_random)
write_files("./fixed_caviar_size5000/", res_fixed)