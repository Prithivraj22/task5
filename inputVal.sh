#!/bin/bash

if [[ $# -lt 3 ]]; then
   echo "No arguments are passed!"
   exit 1
else 
   echo "init 1"
fi

if [[ -z "$1" ]]; then
   echo "You failed to give string as an argument"
   exit 1
else 
   echo "initiating the checking 2!"
fi

FILE=$1

if [[ ! -f "$FILE" ]]; then
   echo "File not found error !"
   exit 1
else
   echo "file check next!"
fi

if [[ ! -r "$FILE" ]]; then
   echo "Permission denied !"
   exit 1
else 
   echo "file->theresold"
fi

THERESOLD=$2

if [[ "$THERESOLD" =~ ^[0-9]+$ ]]; then
   echo "the value $THERESOLD is a number lets go further checking.."
else 
   echo "the value $THERESOLD is not a number"
   exit 1
fi
 
if [[ "$THERESOLD" -gt 100 ]]; then
   echo "The $THERESOLD% Value is greter than 100 !"
   exit 1;
else 
   echo "lets go to the final check!"
fi

FOLDER=$3

if [[ "$FOLDER" == "/" || "$FOLDER" == "/etc" ]];then
   echo "Refusing to delete critical sytem directory !"
   exit 1
else
   echo "COMMAND: rm -rf $FOLDER/*"
   exit 0;
fi

