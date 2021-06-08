#!/bin/sh

add_entry()
{
    echo "To add an entry, we will need the entry's name, phone number and email"

    echo "Please enter a first name"
    read FIRST_NAME

    echo " "

    echo "Please enter a last name"
    read LAST_NAME

    echo " "

    echo "Please enter a phone number"
    read PHONE_NUMBER

    echo " "

    echo "Please enter an email"
    read EMAIL 

    echo " "

    echo "Great, your entry has been added. Here is the information you entered for" $FIRST_NAME $LAST_NAME 

    echo " "

    echo "Phone:" $PHONE_NUMBER 
    echo "Email:" $EMAIL

    touch ${FIRST_NAME}_${LAST_NAME}.txt
    
    echo ${FIRST_NAME} >> ${FIRST_NAME}_${LAST_NAME}.txt
    echo ${LAST_NAME} >> ${FIRST_NAME}_${LAST_NAME}.txt
    echo ${PHONE_NUMBER} >> ${FIRST_NAME}_${LAST_NAME}.txt
    echo ${EMAIL} >> ${FIRST_NAME}_${LAST_NAME}.txt
    mv ${FIRST_NAME}_${LAST_NAME}.txt entries
    
    echo "--------"
}
