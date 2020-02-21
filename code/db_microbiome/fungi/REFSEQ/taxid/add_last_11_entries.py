import sqlite3

d = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/fungi.db')
db = d.cursor()

last = []
last.append([1314773, "GCF_003711515.1_Sodal1_genomic.fna.gz"])
last.append([45357, "GCF_002926055.2_CanHae_1.0_genomic.fna.gz"])
last.append([139825, "GCF_003851025.1_SCP_1.1_genomic.fna.gz"])
last.append([1051616, "GCF_003724135.1_ASM372413v1_genomic.fna.gz"])
last.append([156630, "GCF_004154835.1_ASM415483v1_genomic.fna.gz"])
last.append([1231522, "GCF_002926085.2_CanDuoHae_v1.0_genomic.fna.gz"])
last.append([76775, "GCF_003290485.1_ASM329048v1_genomic.fna.gz"])
last.append([264951, "GCF_004022145.1_Paevar1_genomic.fna.gz"])
last.append([498019, "GCF_002775015.1_Cand_auris_B11221_V1_genomic.fna.gz"])
last.append([105984, "GCF_003942205.1_ASM394220v1_genomic.fna.gz"])
last.append([4909, "GCF_003054445.1_ASM305444v1_genomic.fna.gz"])
#print(last)

for i in last:
	db.execute("INSERT INTO TEST(GIVENTAXID, FILENAME, DBNAME) VALUES(?, ?, ?);", (i[0], i[1], 'NCBI'))
	d.commit()


db.close()
d.close()
