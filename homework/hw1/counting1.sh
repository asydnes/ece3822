# Print number of files

# Printing File Numbers
#find ~/ece_3822/* -type f | wc -l

#echo print2
#find `find ~/ece_3822/ -mindepth 1 -maxdepth 1 -type d -print` -type f -print | wc -l

#Print number of directories
#echo Printing Directory Numbers
#find ~/ece_3822/* -maxdepth 0 -type d | wc -l

#Print Files with R and S between 2010-2013
echo Printing # Files with R and S between 2010-2013
find ~/ece_3822/*/*_201[1-3]/S*_R* -type f -print | wc -l

#Number of files containing "Spike"
echo Printing # Files with Spike
grep -l -r -i "spike" ~/ece_3822/* | wc -l

#Number of files containing "seizure"
echo Printing # Files with Spike
grep -l -r -i "seizure" ~/ece_3822/* | wc -l

