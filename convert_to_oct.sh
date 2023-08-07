#!/bin/bash

# Function to convert a character to its octal representation
get_octal() {
  local char=$1
  printf '%o' "'$char"
}

# Function to format octal output as $'\octal\octal\octal'
format_octal() {
  local input=$1
  local output=""
  local i
  for ((i=0; i<${#input}; i++)); do
    output+="\\$(get_octal "${input:$i:1}")"
  done
  echo "$output"
}

# Main script
if [ $# -eq 0 ]; then
  echo "Error: Please provide a string as an argument."
  exit 1
fi

input_string=$1
octal_output=$(format_octal "$input_string")
echo "Output: \$'$octal_output'"
