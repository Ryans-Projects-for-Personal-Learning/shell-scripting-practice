#!/bin/sh

delete_entry()
{
    echo "Enter the first name of the person you would like to delete."

    read FIRST_NAME

    echo "Enter the last name of the person you would like to delete."

    read LAST_NAME

    cd entries

    if [ -f ${FIRST_NAME}_${LAST_NAME}.txt ]
    then
        rm ${FIRST_NAME}_${LAST_NAME}.txt
        echo "Deleted entry for ${FIRST_NAME} ${LAST_NAME}"
    else    
        echo "${FIRST_NAME} ${LAST_NAME} does not exist."
    fi

    cd - 

}