#!/bin/bash

# Print Hello

echo 'Hello'

# Define a variable
WORD='first variable'
echo "$WORD"

echo '$WORD'

# Printing hard coded text along with variable value
echo "Printing out the value of the variable WORD: $WORD"

# Another way to print variable value
echo "Another way to print variable value WORD: ${WORD}"

# Use ${} when something needs to be appended to the variable
echo "Variable appended: ${WORD}s"

# Incorrect usage of variable
echo "$WORDs did not print"

# Concatenate two variables
ENDING=' has two words'
echo "${WORD}${ENDING}"
