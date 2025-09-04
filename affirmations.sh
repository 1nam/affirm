#!/bin/bash

# List of affirmations
affirmations=(
  "You are amazing and capable!"
  "Good things are headed your way!"
  "You have the strength to face any challenge!"
  "Today is going to be a great day!"
  "Believe in yourself, because you are awesome!"
)

# Randomly select an affirmation and print it
random_index=$(( RANDOM % ${#affirmations[@]} ))
echo "${affirmations[$random_index]}"

