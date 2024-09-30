#!/bin/bash

# This takes a list of symbols and a list of new symbols to replace them and calls replace on each one to one mapping

SCRIPT_PATH=$(dirname $(realpath -s $0))
BASE_PROJ_PATH="$SCRIPT_PATH/../.."

symbol_list_str="$1"
symbol_to_replace_list_str="$2"

# Split the input strings into arrays (assuming the items are space-separated)
IFS=' ' read -r -a symbol_list <<< "$symbol_list_str"
IFS=' ' read -r -a symbol_to_replace_list <<< "$symbol_to_replace_list_str"

# Iterate over the two arrays by index
for ((i=0; i<${#symbol_list[@]}; i++)); do
  # Get the corresponding symbol and the replacement symbol
  symbol="${symbol_list[i]}"
  new_symbol="${symbol_to_replace_list[i]}"

  echo "$symbol -> $new_symbol"
  "$BASE_PROJ_PATH/replace.sh" "$symbol" "$new_symbol"
done

