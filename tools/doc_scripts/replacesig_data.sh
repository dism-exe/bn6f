#!/bin/bash

# Replaces signatures but for data labels rather than fuctions.
# Replaces patterns like ".word {LABEL}$", ".byte {LABEL}$", ".hword {LABEL}$"

SCRIPT_PATH=$(dirname $(realpath -s $0))
source ${SCRIPT_PATH}/common.sh

if [ "$1" = "" -o "$2" = "" ]; then
	echo "usage: replacesig_label.sh <label_name> <signature>"
	exit 0
fi

function update_signature() {
    label_name=$1; signature=$2

    # update label definition
    local files=$(grep_source_files "${label_name}::")
    if [[ "${files}" != "" ]]; then
        sed -i "s/\<${label_name}\>::\s*$/${label_name}:: \/\/ ${signature}/" ${files}
        sed -i "s/\<${label_name}\>:: \/\/.*/${label_name}:: \/\/ ${signature}/" ${files}
    else
      local files=$(grep_source_files "${label_name}:")
      if [[ "${files}" != "" ]]; then
          sed -i "s/\<${label_name}\>:\s*$/${label_name}: \/\/ ${signature}/" ${files}
          sed -i "s/\<${label_name}\>: \/\/.*/${label_name}: \/\/ ${signature}/" ${files}
      fi
    fi

    # update label data definitions

    # update uses
    
    local files=$(grep_source_files ".byte ${label_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/.byte \<${label_name}\>.*/.byte ${label_name} \/\/ ${signature}/" ${files}
    fi

    local files=$(grep_source_files ".hword ${label_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/.hword \<${label_name}\>.*/.hword ${label_name} \/\/ ${signature}/" ${files}
    fi

    local files=$(grep_source_files ".word ${label_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/.word \<${label_name}\>.*/.word ${label_name} \/\/ ${signature}/" ${files}
    fi

    local files=$(grep_source_files "=${label_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/=\<${label_name}\>.*/=${label_name} \/\/ ${signature}/" ${files}
    fi

    update_ctags
}

update_signature "$1" "$2"
