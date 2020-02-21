import sys

file_name = sys.argv[1]
data_base_name = sys.argv[2]

#first get species name from file name
get_name = file_name.split('.')
species_name = get_name[0]


def run_func(s_n, d_n, f_n):
    fasta_old = open(f_n)
    new_file = s_n + "." + d_n + ".fasta"
    fasta_new = open(new_file,"w")
    for l in fasta_old:
        if l[0] == ">":
            fasta_new.write(">" + d_n + "." + s_n + "." + l[1:])
        else:
            fasta_new.write(l)
    fasta_old.close()
    fasta_new.close()
    return

run_func(species_name, data_base_name, file_name)
