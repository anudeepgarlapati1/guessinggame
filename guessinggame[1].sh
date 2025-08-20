#!/usr/bin/env bash
# guessinggame.sh
# A simple guessing game for file count in the current directory

function count_files {
    # Counts only regular files (not directories, symlinks, etc.)
    echo $(ls -1 | wc -l)
}

file_count=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files do you think are in the current directory?"

while [[ $guess -ne $file_count ]]
do
    read -p "Enter your guess: " guess
    if [[ $guess -lt $file_count ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Too high! Try again."
    else
        echo "🎉 Congratulations! You guessed it right. There are $file_count files."
    fi
done
