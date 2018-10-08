pushd .\.vscode\userTools
ctrlv > input
py StructPadder.py > output.c
clip < output.c
vim -R output.c
popd