# test-bash
Repository for learning how to create and use bash scripts (e.g., a find-and-replace script).

## usage
To make a bash script executable, cd into the folder with the `.sh` script, and run:
```bash
chmod +x script.sh
```

To run the script (now that it's executable), do the following:
```bash
./script.sh
```

Alternatively, you can run the script without `chmod`'ing it with:
```bash
sh script.sh
```

## resources
* [Dot and dots: source command / current directory, and sequence builder / above directory](https://www.linux.com/blog/learn/2019/1/linux-tools-meaning-dot)
    * e.g., executing `source` using a dot: `. myscript`
    * e.g., using a dot to find something in the current directory: `find . -name "*.jpg"`
    * e.g., using a double dot to create a list descending from ten to one by twos: `echo {10..1..2}`
* [Angled brackets and pushing output to a text file](https://www.linux.com/blog/learn/2019/1/understanding-angle-brackets-bash)
    * e.g., putting the output of `ls` into a new text file: `ls $HOME > dir_content.txt`
    * e.g., appending the output of `wc -l` to a text file: `wc -l dir_content.txt >> dir_content.txt`
* [Angled brackets and feeding output of a command into another command](https://www.linux.com/blog/learn/2019/1/more-about-angle-brackets-bash)
    * e.g., `diff`'ing the output of `ls`'s: `diff <(ls /original/dir/) <(ls /backup/dir/)`
