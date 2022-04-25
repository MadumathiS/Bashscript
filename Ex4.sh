#!/bin/bash
grplist=( $(groups) )
printf "\n"
    for i in "${grplist[@]}"
    do
        printf "$USER is part of the group $i \n"
    done
