#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE()
{
    echo "USAGE:: $(basename $0) -n <name> -w <whishes>"
    echo "Options::"
    echo " -n, Specify the name(MANDATORY)"
    echo " -w, Specify the wishes. OPTIONAL. DEF is Good Morning"
    echo " -h, Display help and exit"


    while getops ":n:w:h" opt;do
    case $opt in
            n) NAME="$OPTARG";;
            w) WISHES="$OPTARG";;
            \?) echo "INVALID OPTIONS: -$OPTARG" >&2; USAGE; exit;;
            ;) USAGE; exit;;
            h) USAGE; exit;;
    esac
    done

    if [ -z "$NAME"]; then
    echo "ERROR: -n is mandatory"
    USAGE
    exit 1
    fi



echo "HELLo $NAME, $WISHES . I have been learning shell scipt"

    
    
    
    
    }