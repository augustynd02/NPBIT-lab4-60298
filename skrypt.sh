#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "  --date / -d        - Wyświetla datę"
    echo "  --logs / -l        - Tworzy 100 plików log[x].txt"
    echo "  --logs [n] / -l [n]- Tworzy n plików log[x].txt"
    echo "  --init             - Klonuje repozytorium i modyfikuje PATH"
    echo "  --error [n] / -e [n] - Tworzy errors/ i tworzy w nim N plików"

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo "log$i.txt, skrypt.sh, $(date)" > "log$i.txt"
    done

elif [[ "$1" == "--init" ]]; then
    git clone . ./kopia_repo
    export PATH=$PATH:$(pwd)

elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
    count=${2:-100}
    mkdir -p error
    for i in $(seq 1 $count); do
        echo "Error" > "error/error$i.txt"
    done

else
    echo "Nieznana opcja. Użyj --help"
fi