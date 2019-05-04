data_to_move="data" #/train/woman"
new_dir="train" #/tenpercentwoman"

# create list of a percentage of the files in the data_to_move dir:
find $data_to_move -type f | shuf -n $(echo $(( $(find $data_to_move -type f | wc -l ) * 50 / 100))) | grep -v "DS_Store" > files_to_move.txt

mkdir -p $new_dir
# loop through files and move them :)
while read pathname; do
    echo "moving $pathname to $new_dir" #/$(echo $pathname | awk -F/ '{print $4}')/$(basename $pathname)"
    #mkdir -p "$new_dir/$(echo $pathname | awk -F/ '{print $4}')"
    mv "$pathname" "$new_dir" #/$(echo $pathname | awk -F/ '{print $4}')/$(basename $pathname)"
done < files_to_move.txt

# clean up the txt file business
rm files_to_move.txt
