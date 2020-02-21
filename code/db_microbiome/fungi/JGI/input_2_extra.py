import sqlite3

d = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/fungi.db') 
db = d.cursor()

db.execute("INSERT INTO FUNGI_DB(GIVENTAXID, FILENAME, DBNAME) VALUES(1907212, 'RhodotJ31_1_AssemblyScaffolds_Repeatmasked.fasta.gz', '1K');")
d.commit()

db.execute("INSERT INTO FUNGI_DB(GIVENTAXID, FILENAME, DBNAME) VALUES(985140, 'Zymps1_AssemblyScaffolds_Repeatmasked.fasta.gz', '1K')")
d.commit()

db.close()
d.close()
