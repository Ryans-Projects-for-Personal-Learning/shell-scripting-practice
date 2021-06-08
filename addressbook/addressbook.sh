#!/bin/sh

menu()
{
while [ OPTION != 1 ] || [ OPTION != 2 ] || [ OPTION != 3 ] || [ OPTION != 4 ] 
do
    echo "Welcome to your address book. Please select one of the menu options to continue: \

    1: Search for an entry
    2: Add an entry
    3: Edit an entry
    4: Delete an entry

To exit, the program, please press ctrl + C."

read OPTION
case $OPTION in
1 )
    . ./search_entry.sh
    search_entry
    ;;

2 ) 
    . ./add_entry.sh
    add_entry
    ;;

3 )

    . ./edit_entry.sh
    edit_entry
    ;;

4 )
    . ./delete_entry.sh
    delete_entry
    ;;

esac
done
}


menu