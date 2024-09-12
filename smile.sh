#!/bin/bash

# Function to calculate factorial
factorial() {
  local num=$1
  local result=1

  # Check if number is less than 0
  if [ $num -lt 0 ]; then
    echo "Factorial of a negative number doesn't exist."
    return
  fi

  # Loop to calculate factorial
  while [ $num -gt 1 ]; do
    result=$((result * num))
    num=$((num - 1))
  done

  echo "The factorial is: $result"
}

# Read user input
echo "Enter a number:"
read number

# Call factorial function
factorial $number
