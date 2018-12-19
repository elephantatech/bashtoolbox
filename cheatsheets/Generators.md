# Command for generating data cheatsheet

The goal of this cheat sheet is to provide you with commands to generate data for testing like lorem ipsum.

## Command Description
TODO

see man or info pages for details

## Usage
random text file to generate for general purpose

    $ tr -dc a-z1-4 </dev/urandom | tr 1-2 ' \n' | awk 'length==0 || length>50' | tr 3-4 ' ' | sed 's/^ *//' | cat -s | sed 's/ / /g' |fmt > generatedfile.txt

