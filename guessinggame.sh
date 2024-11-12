#!/usr/bin/bash

function guessinggame {
    local num_files=$(ls -1 | wc -l)
    local guess=-1

    while [[ $guess -ne $num_files ]]
    do
        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $num_files ]]
        then
            echo "Your guess was too low."
        elif [[ $guess -gt $num_files ]]
        then
            echo "Your guess was too high."
        else
            echo "Congratulations! Your guess was correct."
        fi
    done
}


guessinggame
