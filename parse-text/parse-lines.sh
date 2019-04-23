# split the input based on spaces and print the second field that's on the fourth line:
echo "----------"
awk -F " " '{if (NR==4) { print $2 } }' input.txt
echo "----------"
echo " "

# split the input based on spaces and print the third field for each line:
echo "----------"
awk -F " " '{ print $3 }' input.txt
echo "----------"
