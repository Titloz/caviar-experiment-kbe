"""The goal of this file is to generate a csv file adequate for caviar from a 
directory of 5000 terms. """


def to_csv(directory):
    csv_file = directory + "terms.csv"
    with open(csv_file, "a", encoding="utf-8") as csvf:
        csvf.write("ID,Expression,HalideResult,HalideTime\n")
    #for i in range(1):
    for j in range(1):
        for k in range(10):
            for l in range(10):
                id = 100*j + 10*k + l + 1 #1000*i +
                filename = directory + str(j) + str(k) + str(l) + ".txt"#+ str(i) 
                with open(filename, "r", encoding="utf-8") as f:
                    term = f.readline()
                with open(csv_file, "a", encoding="utf-8") as csvf:
                    new_line = str(id)+","+term+",0,1\n"
                    csvf.write(new_line)

to_csv("./cavsize100/sexpr/")