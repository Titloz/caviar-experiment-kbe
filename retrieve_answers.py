import matplotlib.pyplot as plt 

def get_size(sexpr):
    # works also with funexpr
    counter = 0
    for c in sexpr:
        if c == '(':
            counter += 1
    return counter

def runner_report(filename, nb_terms, initial_term):
    i = initial_term
    list_sizes = []
    with open(filename, "r", encoding="utf-8") as f:
        while i < nb_terms + initial_term: # - 1:
            s = f.readline()
            if s.startswith("Best Expr: "):
                expr = s[11:]
                list_sizes.append((i, get_size(expr)))
                i += 1
    return list_sizes

def result_kbe(directory, list):
    new_list = []
    #for i in range(0):
    for j in range(1):
        for k in range(10):
            for l in range(10):
                number = 100*j + 10*k + l + 1 # 1000*i +
                if (number > 33):
                    break
                term, size_caviar = list[number -1] #number-2
                filename = directory + "0"+str(k)+str(l)+".txt"
                with open(filename, "r", encoding="utf-8") as f:
                    contents = f.read()
                pos = contents.rfind("Extracted term:\n")
                posr = contents.rfind("Rules (all):")
                posend = contents.rfind("Equations (all):")
                rules = -1
                if posr != -1 and posend != -1:
                    rules = count_rules(contents[posr+12:posend]) - 1
                if pos == -1:
                    new_list.append((term, size_caviar, -1, rules))
                else:
                    # we cut at the last extracted term
                    res = contents.rsplit("Extracted term:\n", 1)[1]
                    # we get the term
                    new_term = res.split("\n", 1)[0]
                    new_list.append((term, size_caviar, get_size(new_term), rules))
    return new_list

def count_rules(s):
    counter = 0
    for c in s:
        if c == '\n':
            counter += 1
    return counter

#p1 = runner_report("./fixed_caviar_size50/sexpr/caviar_result_1s", 2316, 1)
#p2 = runner_report("./fixed_caviar_size50/sexpr/caviar_result_1s_part2", 1054, 2317)
#p3 = runner_report("./fixed_caviar_size50/sexpr/caviar_result_1s_part3", 1628, 3373)

#p1.append((2317, -1)) 
#p2.append((3372, -1))             
#caviar_result = (p1 + p2) + p3 
#caviar_result  = runner_report("./fixed_caviar_size50/sexpr/caviar_result_1s", 550, 2)
#endlist = result_kbe("./", caviar_result)

def get_winningterm(l):
    for x in l:
        i, caviar, kbe = x 
        if (caviar >=0 and kbe >=0):
            if (caviar>kbe):
                return i
    return -1

#print(get_winningterm(endlist))

def filter_count_notusable(l):
    cause_caviar = 0
    cause_kbe = 0 
    total = 0
    new_list = [(i, 0) for i in range(-5000, 5001)]
    for el in l:
        t, caviar, kbe, rules = el 
        b_caviar = (caviar == -1)
        b_kbe = (kbe == -1)
        if b_caviar or b_kbe:
            total += 1
            if b_caviar:
                cause_caviar += 1
            if b_kbe:
                cause_kbe += 1
        else:
            ind, nb = new_list[(kbe - caviar) + 5000]
            new_list[(kbe - caviar) + 5000] = (ind, nb+1)
    return (new_list, cause_caviar, cause_kbe, total)

def generate_plot(stats, caviar, kbe, total, yaxis_max = 5000):
    print(f"\ncause_caviar = {caviar}, cause_kbe = {kbe}, total = {total}\n")

    x_vals = [x for x, y in stats]
    y_vals = [y for x, y in stats]

    fig, ax = plt.subplots(figsize=(9, 5))

    #ax.plot(x_vals, y_vals, marker='o', linestyle='-', color='royalblue')
    ax.bar(x_vals, y_vals, width=0.8, color='royalblue', edgecolor='black')
    #ax.set_yscale('log')

    ax.set_xlim(-5000, 5000)
    ax.set_ylim(0, yaxis_max) 
    ax.set_xlabel("delta kbe-caviar", fontsize=12)
    ax.set_ylabel("number of terms", fontsize=12)
    ax.set_title("for terms of cavsize100 (~size 5000), 30s", fontsize=14)

    ax.grid(True, linestyle='--', alpha=0.6)
    plt.tight_layout()
    plt.show()

def filter_byrules(l):
    nl = []
    for el in l:
        id, nb_rules = el 
        if nb_rules != -1:
            nl.append(el)
    return nl 

def plot_sizerules(rules, nb_rules_max):
    def get_y(l):
        nl = [(i,0) for i in range(nb_rules_max)]
        for el in l:
            id, size = el 
            i, s = nl[size]
            nl[size] = (i,s+1)
        return nl
    nl = get_y(rules)
    x_vals = [x for x,y in nl]
    y_vals = [y for x,y in nl]

    fig, ax = plt.subplots(figsize=(9, 5))

    #ax.plot(x_vals, y_vals, marker='o', linestyle='-', color='royalblue')
    ax.bar(x_vals, y_vals, width=0.8, color='royalblue', edgecolor='black')
    #ax.set_yscale('log')

    ax.set_xlim(450, nb_rules_max)
    ax.set_ylim(0, 5) 
    ax.set_xlabel("number of rules", fontsize=12)
    ax.set_ylabel("number of terms that led to this number of rules", fontsize=12)
    ax.set_title("for terms from cavsize100, 1 iteration", fontsize=14)

    ax.grid(True, linestyle='--', alpha=0.6)
    plt.tight_layout()
    plt.show()

def plot_sizes(l, size_max):
    # l is composed of (id, size)
    # i want x = size, y = number of terms 
    #x_vals = [y for x,y in l]
    def get_y(l):
        nl = [(i,0) for i in range(size_max)]
        for el in l:
            id, size = el 
            i, s = nl[size]
            nl[size] = (i,s+1)
        return nl
    nl = get_y(l)
    x_vals = [x for x,y in nl]
    y_vals = [y for x,y in nl]

    fig, ax = plt.subplots(figsize=(9, 5))

    #ax.plot(x_vals, y_vals, marker='o', linestyle='-', color='royalblue')
    ax.bar(x_vals, y_vals, width=0.8, color='royalblue', edgecolor='black')
    #ax.set_yscale('log')

    ax.set_xlim(0, size_max)
    ax.set_ylim(0, 5) 
    ax.set_xlabel("terms sizes", fontsize=12)
    ax.set_ylabel("number of terms for this size", fontsize=12)
    ax.set_title("for terms from cavsize100, 1 iteration", fontsize=14)

    ax.grid(True, linestyle='--', alpha=0.6)
    plt.tight_layout()
    plt.show()
#stats, cause_caviar, cause_kbe, total = filter_count_notusable(endlist)
#generate_plot(stats, cause_caviar, cause_kbe, total, 100)

def pi1_3(l):
    return [(w,y) for w,x,y,z in l]

def pi1_4(l):
    return [(w,z) for w,x,y,z in l]

#plot_sizes(filter_byrules(pi1_3(result_kbe("./cavsize100/result-kbe30/",[(i+1,-1) for i in range(33)]))),2000)


caviar_result  = runner_report("./cavsize100/sexpr/caviar_result_30s", 33, 1)
endlist = result_kbe("./cavsize100/result-kbe30/", caviar_result)
stats, cause_caviar, cause_kbe, total = filter_count_notusable(endlist)
generate_plot(stats, cause_caviar, cause_kbe, total, 20)

# maybe generate a csv file with the right informations, as
# the list basically