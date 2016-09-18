#echo Searching File and Outputting to Text

#Number of files containing "Spike"
#echo Printing # Files with Spike
#grep -lri "spike" ~/ece_3822/* > spike.txt

#file = `cat spike.txt` 
echo Counting
for f in $(grep -iwrl seizure ~/ece_3822/);
do 
	echo Reading File and Outputting
	cat $f | tr -sc 'A-za-z' '\012' < $f >> ~/Documents/freq3.txt
	#cat $f | tr '[:punct:]' ' ' | tr 'A-Z' 'a-z' | tr -s ' ' | tr ' ' '\n' >> ~/Documents/freq1.txt

done 
cat ~/Documents/freq3.txt | sort | uniq -c | sort -nr >> ~/Documents/freq4.txt

# fo f in $(grep -lwri "spike" ~/ece_3822/*)

