module load anaconda/python2-4.2

#first we need to unzip the files and create ones we can use
#we unzip and then we make it that the sequences are on one line for each header instead of multiple lines
gunzip 1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 1k.fasta > 1k_new.fasta
gzip 1k.fasta

gunzip ensemble.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' ensemble.fasta > ensemble_new.fasta
gzip ensemble.fasta

gunzip ncbi.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' ncbi.fasta > ncbi_new.fasta
gzip ncbi.fasta

#for the full genomes, must remove mitochondrial dna from the reference
