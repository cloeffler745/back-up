import sys

file = sys.argv[1]

f = open(file)
hold = []

for line in f:
    if not line[0] == "#":
        hold += [line.split("\t")]

f.close()

data = []
seen = []

for i in hold:
    if not i[0] in seen:
        seen += [i[0]]
        data += [i]


best = open("get_best_matches.txt", "w")

for i in data: 
	best.write("\t".join(i))

best.close()
 
