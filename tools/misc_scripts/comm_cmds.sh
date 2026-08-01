script_dir="$(dirname "${BASH_SOURCE[0]}")"
git_root="$(cd $script_dir && git root)"

comm-cmds() {
    python3 "$git_root/tools/misc_scripts/comm_cmds.py" $@
}
