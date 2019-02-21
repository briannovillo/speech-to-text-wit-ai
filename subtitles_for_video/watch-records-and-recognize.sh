#!/bin/sh

inotifywait -m ./sounds/ -e close_write |
    while read path action file; do
        python3 main.py ./sounds/$file
    done
