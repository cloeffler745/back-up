import sqlite3

db = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/fungi.db")

db.execute("UPDATE FUNGI_DB SET STRAINTAXID=985140, STRAINNAME='Zymoseptoria pseudotritici STIR04_2.2.1', SPECIESTAXID=1173715, SPECIESNAME='Zymoseptoria pseudotritici', GENUSTAXID=1047167, GENUSNAME='Zymoseptoria' WHERE FILENAME='Zymps1_AssemblyScaffolds_Repeatmasked.fasta.gz';")
db.commit()

db.execute("UPDATE FUNGI_DB SET STRAINTAXID=0, STRAINNAME='', SPECIESTAXID=0, SPECIESNAME='', GENUSTAXID=5533, GENUSNAME='Rhodotorula' WHERE FILENAME='RhodotJ31_1_AssemblyScaffolds_Repeatmasked.fasta.gz';")
db.commit()

db.close()
