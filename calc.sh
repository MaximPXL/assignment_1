#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 'expression'"
  exit 1
fi

# Evaluate the expression using bc (basic calculator)
result=$(echo "scale=20; $1" | bc -l)

# Print the expression and the result
echo "$1 = $result"
