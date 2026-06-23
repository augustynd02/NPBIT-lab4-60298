#!/bin/bash
if [[ "$1" == "--date" ]]; then
    date
elif [[ "$1" == "--logs" ]]; then
    for i in {1..100}; do
        echo "log$i.txt, skrypt.sh, $(date)" > "log$i.txt"
    done
else
    echo "Nieznana opcja"
fi