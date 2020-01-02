def source_relabel(old_label, new_label):
    from .include import definitions
    import os
    # update the label in the repository
    replacep_bin = os.path.join(definitions.ROM_REPO_DIR, 'replacep.sh')
    print('UPDATE LABEL: {0} -> {1}'.format(old_label, new_label))
    cwd = os.getcwd()
    os.chdir(definitions.ROM_REPO_DIR)
    os.system('{replacep_bin} {old_label} {new_label}'.format(**vars()))
    os.chdir(cwd)