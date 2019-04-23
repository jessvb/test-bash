# split the input based on spaces and print the third field for each line using awk,
# and then write these fields to a file called output.txt using tee:
awk -F " " '{ print $3 }' input.txt | tee output.txt
