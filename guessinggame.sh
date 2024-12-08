#!/usr/bin/env bash

# Function to check user's guess
function check_guess {
    if [[ $1 -lt $2 ]]; then
        echo "Your guess is too low. Try again!"
    elif [[ $1 -gt $2 ]]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number of files."
        return 0
    fi
    return 1
}

# Get the number of files in the current directory
file_count=$(ls -1 | wc -l)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
    read -p "Enter your guess: " user_guess

    # Ensure the user enters a number
    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    check_guess $user_guess $file_count
    if [[ $? -eq 0 ]]; then
        break
    fi
done
