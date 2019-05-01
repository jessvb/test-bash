DIR="data"
mkdir -p "new_files/$DIR"
for f in $(find $DIR -name "*.txt"); do
    echo "Processing $f file..."
    # echo $(basename $f) # just the filename
    # echo ${f%/*} # path to file
    # make sure the directory structure is there for this file
    mkdir -p new_files/${f%/*}
    # example process: ./sph2pipe -f rif "$f" "new_files/$f"
    cp $f "new_files/$f"
done
