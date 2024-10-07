# Calltree DB
This aims to simplify analysis of function to function relations by analyzing the code and generating
a sqlite3 database that preserves call trees and branches including dispatches (bx r0 from jumptable)

## Generating the empty DB
First we have to generate an empty db as a baseline to determine the schema. That's what schema.dbml is for. 
To generate the db from it, run
```
docker run --rm -it -v .:/mnt/ --user $(id -u):$(id -g) lan22h/dbmint:latest gen schema.dbml -o base.db
```

Also, the contents of schema.dbml may be pasted into https://dbdiagram.io/d for a visual rendering

## Analysis
When the source is analyzed, it expects to be initialized from a root function and returns a `result.db`.

## Maintenance
This tool is authored by Lan <lanhikarixx@gmail.com>
