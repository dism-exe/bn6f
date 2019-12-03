

if __name__ == '__main__':
    import configparser
    config = configparser.ConfigParser()
    config.read('config.ini')
    print(config['Paths']['GameStringTblPath'])
