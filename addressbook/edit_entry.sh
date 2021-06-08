#!/bin/sh

edit_entry()
{
    echo "Enter the first name of the person you would like to edit."

    read FIRST_NAME

    echo "Enter the last name of the person you would like to edit."

    read LAST_NAME

    cd entries

    if [ -f ${FIRST_NAME}_${LAST_NAME}.txt ]
    then
        echo "------"
        echo "Editing entry for"
        cat ${FIRST_NAME}_${LAST_NAME}.txt
        echo "------"
        echo "Which field would you like to edit? \
        
        1) First Name
        2) Last Name
        3) Phone Number
        4) Email
        "

        read OPTION

        case $OPTION in
        1 ) 
        echo "Enter the first name you would like to change it to."
        read NEW_FIRST_NAME
        sed -i "1s/.*/$NEW_FIRST_NAME/" ${FIRST_NAME}_${LAST_NAME}.txt
        echo "The entry's first name has been changed."
        mv ${FIRST_NAME}_${LAST_NAME}.txt ${NEW_FIRST_NAME}_${LAST_NAME}.txt
        ;;

        2 ) 
        echo "Enter the last name you would like to change it to."
        read NEW_LAST_NAME
        sed -i "2s/.*/$NEW_LAST_NAME/" ${FIRST_NAME}_${LAST_NAME}.txt
        echo "The entry's last name has been changed."
        mv ${FIRST_NAME}_${LAST_NAME}.txt ${FIRST_NAME}_${NEW_LAST_NAME}.txt
        ;;

        3 )
        echo "Enter the phone number you would like to change it to."
        read NEW_PHONE_NUMBER
        sed -i "3s/.*/$NEW_PHONE_NUMBER/" ${FIRST_NAME}_${LAST_NAME}.txt
        echo "The entry's phone number has been changed."
        ;;

        4 )
        echo "Enter the email you would like to change it to."
        read NEW_EMAIL
        sed -i "4s/.*/$NEW_EMAIL/" ${FIRST_NAME}_${LAST_NAME}.txt
        echo "The entry's email has been changed."
        ;;

        esac
    else    
        echo "${FIRST_NAME} ${LAST_NAME} does not exist."
    fi

    cd -
}