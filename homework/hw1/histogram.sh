#echo Searching File and Outputting to Text

#Number of files containing "Spike"
#echo Printing # Files with Spike
#grep -lri "spike" ~/ece_3822/* > spike.txt

#file = `cat spike.txt` 
rm ~/Documents/freq1.txt
rm ~/Documents/freq2.txt
rm ~/Documents/freq3.txt
echo Counting

for f in $(grep -irwl spike ~/ece_3822/);
do 
	echo Reading File and Outputting
	cat $f | tr -sc 'A-za-z' '\012' < $f >> ~/Documents/freq1.txt
	#cat $f | tr '[:punct:]' ' ' | tr 'A-Z' 'a-z' | tr -s ' ' | tr ' ' '\n' >> ~/Documents/freq1.txt

done 
cat ~/Documents/freq1.txt |sort | uniq -c | sort -nr > ~/Documents/freq2.txt 
cut -f2 $1 $2 ~/Documents/freq2.txt | awk '{array[$2]=$1; sum+=$1} END { for (i in array) printf "%-20s %-15d %6.2f%%\n", i, array[i], array[i]/sum*100}' | sort -k2 -nr > ~/Documents/freq3.txt 


# fo f in $(grep -lwri "spike" ~/ece_3822/*)

#| sort -nr -k2 | uniq -c

