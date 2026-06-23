#!/bin/bash
if [[ "$1" == "--date" ]]; then
    date

elif [[ "$1" == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "  --date           - Wyświetla datę"
    echo "  --logs           - Tworzy 100 plików log[x].txt"
    echo "  --logs [liczba]  - Tworzy podaną liczbę plików log[x].txt"

elif [[ "$1" == "--logs" ]]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo "log$i.txt, skrypt.sh, $(date)" > "log$i.txt"
    done
else
    echo "Nieznana opcja"
fi