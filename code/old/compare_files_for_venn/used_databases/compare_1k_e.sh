cd Aciri1_iso
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Acrchr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Agabi_varbur_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Allma1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Altalt1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Amamu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Artbe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Artol1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ascra1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ascru1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ashgo1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspac1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspbom1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspbr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspca3
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspcal1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspcl1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspcri1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspfl1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspfo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspfu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspfu_A1163_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspgl1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspni7
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspnom13137_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspoch1432_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspor1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspram1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspsy1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspte1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Asptu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspuda1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspve1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspwe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aspzo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aurpu_var_mel1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aurpu_var_nam1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aurpu_var_pul1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Aurpu_var_sub1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Babin1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Batde5
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Bauco1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Beaba1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Blade1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Blugr2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Blugra1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Botbo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Byssp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Calco1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Calvi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Canalb1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Canar1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Canca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Canta1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cante1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Capcor1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Capep1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Capse1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cersu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Chagl_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Claba1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Claca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Claim1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Clalu1_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Claps1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Claye1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cocca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd CocheC5_3
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cocim1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cocmi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cocsa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cocvi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colfi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colgr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colhig2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colny1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Color1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colsa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colsi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colsu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Colto1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Conap1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Conco1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Conpu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cormi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cryne_H99_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cryne_JEC21_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cybja1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Cypeu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Dacsp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Daequ1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Debha1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Diaam1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Dicsq1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Dipse1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Dotse1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Enccu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Enche1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Encin1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Encro1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd EndpusZ1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Entbi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Erynec1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Eurhe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Eutla1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exoaq1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exode1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exome1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exool1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exosi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exosp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Exoxe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fibsp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fishe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fomme1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fonmo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fonmu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fonnu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fonpe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fusgr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fusox2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fusps1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Fusve2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Gaegr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Galma1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Glalo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Gloin1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Glotr1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Grocl1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Gymlu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hebcy2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hetan2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hisca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hydpi2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hypbu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Hypsu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Jaaar1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Kazaf1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Kurca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Lacam2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Laesu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Lenedo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Lepmu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Liccor1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Lodelo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Macph1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Maggr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Magpo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Malsy1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Marbr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Metac1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Metbi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Metro1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Meygui1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Micbo1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Micca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Micld1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Moeaph1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Monha1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Monpe1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Morve1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Nadfu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Necha2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Nempa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neodi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neofi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neole1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neopa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neucr2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neucr_trp3_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Neute_mat_a1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Nosce1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ogapa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Oidma1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ophpic1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pacta1_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Parbr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Parbra1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Parpar1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Parsp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Paxin1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penant1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd PenchWisc1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pencop1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pendec1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pendi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pendig1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penexp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penfla1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pengri1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penita1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penox1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penpol1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pensol1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penste1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pensub1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Penvul1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phaal1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phach1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phiatt1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phisc1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phlcen1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Phlgi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Picme2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Picst3
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pilcr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pirin1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd PleosPC15_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Plicr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pocchl1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Podan3
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Psehu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pseudest1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pucst1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pucst_PST78_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Puctr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Punst1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pycci1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pyrco1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pyrsp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Pyrtt1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhimi_ATCC11559_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhiso1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhives1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhivi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhoba1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhosp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhoto1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rhoto_ATCC26217_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Rozal1_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sacce1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd SacceYB210_1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Saico1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Schcy1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Schja1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Schoc1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Schpa1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sclci1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sclsc1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sebve1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sepmu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd SerlaS7_3_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd SerlaS7_9_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Sisni1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Spapa3
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Spipu1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Spore1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Spoth2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Stano2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Stasp1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Stehi1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Stely1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Suilu4
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Talma1_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Talst1_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Tilan2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Torde1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trapub1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trave1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Treme1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trias2479
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trias8904
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Triat2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trigam1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Trihar1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Triol1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Triver1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd TriviGv29_8_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Tubme1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Tulca1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Uncre1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ustma2_2
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Ustvir1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Verga1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Walic1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Walse1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Xylhe1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Yarli1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Zygro1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

cd Zymbr1
gunzip 0_1k.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_1k.fasta > 1k_new.fasta
gzip 0_1k.fasta
gunzip 0_ensembl.fasta.gz
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' 0_ensembl.fasta > ensembl_new.fasta
gzip 0_ensembl.fasta
~/project/anaconda2/bin/blastn -query 1k_new.fasta -subject ensembl_new.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out blast_results.txt
~/project/anaconda2/bin/python ../extract.py blast_results.txt
cd ..

