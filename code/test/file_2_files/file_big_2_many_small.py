big = open("big_file.fasta")
name = ""
new_file = ""
for line in big:
	if line[0] == ">": 
		l = line.strip().split("|")
		last_element = l[-1]
		if not last_element == name:
			name = last_element
			new_file = str(last_element.replace(" ", "_")) + ".fasta" # [replace spaces with "_"].fasta
			if "f" in globals():
				f.close()
			f = open(new_file, "w")
	f.write(line)
f.close()
big.close()
