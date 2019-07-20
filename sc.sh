#!/bin/bash

usage()
{
    cat << EOF
--------------------------------------------------------
Usage:
--------------------------------------------------------
To enable an alias module   :     sc -e [alias_module]
To disable an alias module  :     sc -d [alias_module]
To check the usage          :     sc -h 

EOF
}

enable_alias_module()
{
    validate_alias_module $1
    
    cat $SC_ROOT/modules/$1.sh >> $SC_ROOT/.sc_rc
    echo "$1 has been enabled."
    exec bash -l 
}

disable_alias_module()
{
    validate_alias_module $1
}

validate_alias_module()
{
    if [ -z $1 ]; then
        echo "<alias module> is required."
        exit 1
    fi
}


while [ "$1" != "" ]; do
    case $1 in
        -e | --enable )         shift
                                enable_alias_module $1
                                ;;
        -d | --disable )        disable_alias_module $1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done