import re

def to_sexpr(expr):
    expr = expr.strip()

    if re.fullmatch(r"[a-zA-Z_]\w*|\d+", expr):
        return expr

    m = re.match(r"([a-zA-Z_]\w*)\((.*)\)", expr)
    """if not m:
        raise ValueError(f"Invalid expression : {expr}")"""

    func = m.group(1)
    args_str = m.group(2)
    args = split_args(args_str)
    parsed_args = [to_sexpr(a) for a in args]
    return f"({func} {' '.join(parsed_args)})"

def split_args(s):
    args = []
    current = ''
    depth = 0
    for c in s:
        if c == ',' and depth == 0:
            args.append(current.strip())
            current = ''
        else:
            if c == '(':
                depth += 1
            elif c == ')':
                depth -= 1
            current += c
    if current.strip():
        args.append(current.strip())
    return args

def replace_all(sexpr):
    new_expr = sexpr
    to_replace = ["AND","EQ","LE","LT","MIN","MAX","OR","DIV","MUL","GT","MOD","PLUS","MINUS","GE","NOT","NE"]
    by_replace = ["&&","==","<+","<","min","max","||","/","*",">","%","+","-",">=","!","!="]
    for i in range(len(to_replace)):
        new_expr = new_expr.replace(to_replace[i], by_replace[i])
    for j in range(99, -1, -1):
        new_expr.replace("NUMNEG"+str(j), "Constant(-" + str(j) + ")")
        new_expr.replace("NUM"+str(j), "Constant("+ str(j) + ")")
    return new_expr

def directories_tosexpr(directory):
    for i in range(5):
        for j in range(10):
            for k in range(10):
                for l in range(10):
                    file = directory + str(i*1000+j*100+k*10+l) + ".txt"
                    new_file = directory + "sexpr/" + str(i*1000+j*100+k*10+l) + ".txt"
                    with open(file, "r", encoding="utf-8") as f:
                        expr = f.readline()
                    sexpr = replace_all(to_sexpr(expr))
                    with open(new_file, "w", encoding="utf-8") as f:
                        f.write(sexpr)

directories_tosexpr()