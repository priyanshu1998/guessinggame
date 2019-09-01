all: gen_readme

gen_readme:
	echo "#Title# : ##Script to guess number of files in current directory in a form of a game##">README.md
	echo "Makefile ran on  `date +%d-%b-%Y`" at "`date +%H:%M`">>README.md
	echo "Number of lines: `wc -l guessinggame.sh`" >>README.md 

clean:
	rm README.md