#Will make up for the target 1k error, there were two files, manually selected the larger one
cd CocheC5_3
cp ~/scratch/1000G/single_files/CocheC5_3/CocheC5_3_AssemblyScaffolds_Repeatmasked.fasta.gz 0_1k.fasta.gz
cd .. 

#Will fix most of the  file grabs for ensembl
cd Conap1
cp ~/scratch/ensemble/references/single_files/Coniosporium_apollinis_cbs_100218.Coni_apol_CBS100218_V1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#there is only one file for this genus

cd Dotse1
cp ~/scratch/ensemble/references/single_files/Dothistroma_septosporum.GCA_000340195.1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#there is only one file for this genus


cd Fusgr1
cp ~/scratch/ensemble/references/single_files/Fusarium_graminearum.RR1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#two files for this species, but clearly the incorrect one has RR_1 and the actual has RR1, the other file was copied successfully


cd Fusps1
cp ~/scratch/ensemble/references/single_files/Fusarium_pseudograminearum.GCA_000303195.1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species

cd Micld1
cp ~/scratch/ensemble/references/single_files/Microbotryum_violaceum.GCA_000166175.1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#there is only one file for this genus

cd Picpa1
#check this again 
cd ..

cd Pyrtt1
cp ~/scratch/ensemble/references/single_files/Pyrenophora_teres.GCA_000166005.1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species

cd Schcy1
cp ~/scratch/ensemble/references/single_files/Schizosaccharomyces_cryophilus.GCA_000004155.2.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species


cd Schja1
cp ~/scratch/ensemble/references/single_files/Schizosaccharomyces_japonicus.GCA_000149845.2.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species

cd Schoc1
cp ~/scratch/ensemble/references/single_files/Schizosaccharomyces_octosporus.GCA_000150505.2.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species

cd Spore1
cp ~/scratch/ensemble/references/single_files/Sporisorium_reilianum.GCA_000230245.1.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this species

cd Trire2
#Multiple files, not sure which one is correct
cd ..

cd Triru1
#Multiple files, not sure which one is correct
cd ..

cd Tulca1
cp ~/scratch/ensemble/references/single_files/Tulasnella_calospora_mut_4182.Tulasnella_calospora_AL13_4D_v1.0.dna.toplevel.fa.gz 0_ensembl.fasta.gz
cd ..
#There is only one file for this genus

cd Yarli1
#need to recheck the tax id manually, too many files
cd ..

