ls > list.txt
sed -i '$ d' list.txt
~/project/anaconda/bin/python make_pairs.py list.txt

