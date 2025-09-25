#!/bin/bash

# Subroutine calls of the pattern `bl sub_xxx` or `bl DoWellDocumentedThing`, etc benefit from also self-documenting their own signatures as functions.
# This script allows that signature string "(T param ...) -> T" to be set. So for example
# replacesig.sh "CopyWords" "(u32 *src, u32 *dest, int size) -> void"

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

    # update function calls
    local files=$(grep_source_files "bl ${function_name}")
    if [[ "${files}" != "" ]]; then
        sed -i "s/bl \<${function_name}\>.*/bl ${function_name} \/\/ ${signature}/" ${files}
        sed -i "s/b \<${function_name}\>.*/b ${function_name} \/\/ ${signature}/" ${files}
    fi

    # update callback data definitions
    local files=$(grep_source_files "\.word ${function_name}+1")
    if [[ "${files}" != "" ]]; then
        sed -i "s/\.word \<${function_name}\>+1.*/\.word ${function_name}+1 \/\/ ${signature}/" ${files}
    fi

    update_ctags
}

update_function_signature "$1" "$2"
