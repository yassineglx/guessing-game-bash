

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "This project is a Bash program where users guess the number of files in the current directory." >> README.md
	echo "" >> README.md
	echo "## Run Instructions" >> README.md
	echo "Run the program using: bash guessinggame.sh" >> README.md
	echo "" >> README.md
	echo "## Program Details" >> README.md
	echo "The makefile was run on: $$(date)" >> README.md
	echo "" >> README.md
	echo "The number of lines in guessinggame.sh is: $$(wc -l < guessinggame.sh)" >> README.md
