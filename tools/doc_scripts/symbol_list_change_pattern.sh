#!/bin/bash

# This takes a list of symbols and replaces a pattern in them

# Capture the first argument (which is the single string containing the list)
input="$1"

# Split the input string into an array (assuming the items are space-separated)
IFS=' ' read -r -a symbol_list <<< "$input"

pattern_to_be_replaced="$2"
pattern_to_replace="$3"

result=""
for symbol in "${symbol_list[@]}"; do
  new_symbol=${symbol/$pattern_to_be_replaced/$pattern_to_replace}
  result=$(echo $result $new_symbol)
done

echo $result
