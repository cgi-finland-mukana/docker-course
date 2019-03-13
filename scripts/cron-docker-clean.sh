#!/bin/bash
TIMESTAMP=$(date "+%d.%m.%Y %T")
while getopts "hcins" OPTION
do
    case $OPTION in

    h)
    cat <<EOF

Docker cleaner by Pasi

-c      Prune Docker containers
-i      Prune Docker images
-n      Prune Docker networks
-s      Prune all (docker system prune)

EOF
    ;;

    c)
#    echo "y" |docker container prune
    echo $TIMESTAMP " - Cleaned docker containers." >> log.txt

    ;;

    i)
    echo "y" |docker image prune
    ;;

    n)
    echo "y" |docker network prune
    ;;
    s)
    echo "y" |docker system prune
    ;;


    esac
done