# from https://stackoverflow.com/a/23714774/8162699
# select 3 random files and move them to a new folder
## LINUX:
# ls | shuf -n 3 | xargs -i mv {} path-to-new-folder
## MAC: shuf can be installed with brew install coreutils. then do this:
# ls data/ | gshuf -n 3 | xargs -i cp {} test/
# "shuf just generates a random permutation of the standard input, limiting the results to 3"

## With a percents instead of a decided number:
ls data/ | gshuf -n $(echo $(( $(ls -1 data/ | wc -l ) * 80 / 100)) ) | xargs -I {} mv data/{} train/
## Move the rest to the test set:
mv data/* test/
