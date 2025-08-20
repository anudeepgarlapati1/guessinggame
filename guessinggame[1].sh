#!/usr/bin/env bash

# Function to count files
function file_count {
    echo $(ls -1 | wc -l)
}

# Store the correct number of files
correct=$(file_count)

echo "Welcome to Guessing Game!"
echo "How many files are in the current directory?"

while true
do
    read guess
    if [[ $guess -lt $correct ]]
    then
        echo "Too low, try again:"
    elif [[ $guess -gt $correct ]]
    then
        echo "Too high, try again:"
    else
        echo "Congratulations! You guessed it right!"
        break
    fi
done
