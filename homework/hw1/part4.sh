#echo Searching File and Outputting to Text

#Number of files containing "Spike"
#echo Printing # Files with Spike
#grep -lri "spike" ~/ece_3822/* > spike.txt

#file = `cat spike.txt` 
echo Counting
for f in $(grep -iwrl spike ~/ece_3822/);
do 
	echo Reading/Writing
	cat $f | tr -sc 'A-za-z' '\012' < $f > ~/Documents/bigrams1.txt
	tail -n +2 ~/Documents/bigrams1.txt > ~/Documents/bigrams2.txt
	paste ~/Documents/bigrams1.txt ~/Documents/bigrams2.txt >> ~/Documents/bigramsFINAL.txt
	
done 
cat ~/Documents/bigramsFINAL.txt | sort | uniq -c | sort -nr > ~/Documents/bigramsAnswer.txt

# fo f in $(grep -lwri "spike" ~/ece_3822/*)

