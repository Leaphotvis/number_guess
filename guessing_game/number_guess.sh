#!/bin/bash

# Prompt for username
echo "Enter your username:"
read USERNAME

echo "Welcome, $USERNAME! Guess the secret number between 1 and 1000:"

# Generate random number
SECRET=$(( RANDOM % 1000 + 1 ))
GUESSES=0

while true
do
  read GUESS
  (( GUESSES++ ))

  if [[ $GUESS -eq $SECRET ]]
  then
    echo "You guessed it in $GUESSES tries. The secret number was $SECRET."
    break
  elif [[ $GUESS -lt $SECRET ]]
  then
    echo "It's higher than that, try again:"
  else
    echo "It's lower than that, try again:"
  fi
done

