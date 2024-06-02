#!/bin/bash
# source routes.sh ht

case $1 in
    here)
        pwd
    ;;
    ht)
        cd ./programing/github/HeriTech
    ;;
    sockets)
        cd ./programing/sockets/learning-sockets/propuestas/chess-js
    ;;
    *)
        echo "Uso: source routes.sh [nombre]"
    ;;
esac