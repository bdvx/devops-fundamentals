#!/bin/sh

if [ $1 == 'add' ]
then
    linesCount=($(wc -l < users.db)++)
    read -p "Enter username: " userName
    read -p "Enter role: " role
    echo $userName
    echo $role
    if [[ $userName =~ [a-zA-Z] ]] && [[ $role =~ [a-zA-Z] ]] 
    then
        echo "$linesCount $userName, $role" >> users.db
    else 
        echo 'Username or roles should be Latin letters only'
    fi
fi