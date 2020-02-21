




# isolates the filename from the filepath
def path_strip(filepath):
        filepath = filepath[42:]
        return filepath



filepath = '/u/home/a/akarlsbe/scratch/fungi/ENSEMBLE/Zygosaccharomyces_rouxii.ASM2636v1.dna.toplevel.fa'

print(filepath + "\n")
filepath = path_strip(filepath)
print(filepath) 
