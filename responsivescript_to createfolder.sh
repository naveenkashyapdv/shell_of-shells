#!/bin/bash
command_to_find_empty=$(find . -type d -empty)
echo "running script to find empty folders"
read -r -p "Are you sure? [Y/n]: " response
response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
    if [ "$command_to_find_empty" ]; then
        echo "These are empty dirs-------------->"
        printf '%s\n' "$command_to_find_empty"
        echo "These are empty dirs-------------->"
            sleep 5s
            echo "Are we creating empty text files to support git"
            read -r -p "Are you sure? [Y/n]: " response
            response=${response,,} # tolower
            if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
            sleep 5s
            echo "creating file.txt files in empty folders"
            find . -type d -empty -exec touch {}/file.txt \;
            echo "text files created ----------->"
            fi
    else
     echo "there are no empty dirs"
    fi
fi
