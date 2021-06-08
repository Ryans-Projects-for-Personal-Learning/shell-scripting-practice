#!/bin/sh

search_entry()
{
    echo "Enter the surname name of the person you would like to find \
    
    " 

    read NAME 
    
    cd entries 

    echo "Your search for ${NAME} returned the following results: \
    
    "

    for i in *
    do
        if grep -q $NAME $i
        then
            cat $i
            echo " "
        fi
    done


}