# includes helper functions useful to the project
def info(flag, *args, **kwargs):
    if flag:
        print(*args, **kwargs)