#!/bin/bash

# replaces labels and any possible pool labels (suffixed with _p[optional number])
# $1: label to find
# $2: label to replace $1

SCRIPT_PATH=$(dirname $(realpath -s $0))
source ${SCRIPT_PATH}/common.sh


if [ "$1" = "" -o "$2" = "" ]; then
	echo "usage: replacesig.sh <function_name> <signature>"
	exit 0
fi

function update_function_signature() {
    function_name=$1; signature=$2

    # update function definition
    local files=$(grep_source_files "${function_name}:")
    if [[ "${files}" != "" ]]; then
        sed -i "s/\<${function_name}\>:.*/${function_name}: \/\/ ${signature}/" ${files}
    fi

    # update calls to function
    local files=$(grep_source_files "bl ${function_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/bl \<${function_name}\>.*/bl ${function_name} \/\/ ${signature}/" ${files}
    fi

    # update calls to callback data
    local files=$(grep_source_files "\.word ${function_name}+1")
    if [[ "${files}" != "" ]]; then
        sed -i "s/\.word \<${function_name}\>+1.*/\.word ${function_name}+1 \/\/ ${signature}/" ${files}
    fi

    update_ctags
}

update_function_signature "$1" "$2"
