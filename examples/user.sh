#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"

# Curly brackets help define what the variables name is and isolate it from the rest of a string to avoid confusing the shell.