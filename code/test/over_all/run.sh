cd all_grouped

#first file
cd spec1

#echo "you made it to this file" >> first.txt

~/project/anaconda2/bin/blastn -query spec1.data1.fasta -subject spec1.data2.fasta  -outfmt "7 qseqid sseqid pident qlen length mismatch" -max_target_seqs 10 -out thingy.txt
~/project/anaconda2/bin/python ../../extract.py thingy.txt

cd ..
#second file
cd spec2

echo "you made it to this file" >> first.txt

cd ..
