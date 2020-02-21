module load jellyfish

jellyfish count -m 100 -s 100M -t 10 -o 1k.jf 1k_new.fasta
jellyfish count -m 100 -s 100M -t 10 -o ensemble.jf e_new.fasta
jellyfish count -m 100 -s 100M -t 10 -o ncbi.jf ncbi_new.fasta

#get the unique and sorted list of kmers for each database without headers
jellyfish dump 1k.jf | sed '/^>/d' |uniq | sort > mers_1k.fasta
jellyfish dump ensemble.jf | sed '/^>/d' |uniq | sort > mers_e.fasta
jellyfish dump ncbi.jf | sed '/^>/d' |uniq | sort > mers_ncbi.fasta

#get the lists of kmers that each database has in common
comm -12 mers_1k.fasta mers_ncbi.fasta > common_1_n.txt
comm -12 mers_1k.fasta mers_e.fasta > common_1_e.txt
comm -12 mers_ncbi.fasta mers_e.fasta > common_n_e.txt

#get the count of the kmers in each species
wc -l mers_*

#get the count of the kmers in common between species from different databases
wc -l common_*

