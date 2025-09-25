#!/bin/bash

# This takes a list of functions and gives them all the same function signature

SCRIPT_PATH=$(dirname $(realpath -s $0))
BASE_PROJ_PATH="$SCRIPT_PATH/../.."

symbol_list_str="$1"
same_sig="$2"

# Split the input string into array (assuming the items are space-separated)
IFS=' ' read -r -a symbol_list <<< "$symbol_list_str"

for ((i=0; i<${#symbol_list[@]}; i++)); do
  symbol="${symbol_list[i]}"

  echo "$symbol // $same_sig"
  "$SCRIPT_PATH/replacesig.sh" "$symbol" "$same_sig"
done

