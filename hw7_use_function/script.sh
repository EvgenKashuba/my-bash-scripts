#!/bin/bash
FILENAME="log"
CHOICE=$1
function Getlog {
  journalctl -p err | grep "$1" > $FILENAME-$CHOICE-Error-`date +%b\-%d\-%Y\-%T`
}
case $CHOICE in
  "Jan" )  Getlog $CHOICE ;;
  "Dec" )  Getlog $CHOICE ;;
  "Nov" )  Getlog $CHOICE ;;
  "" )
   journalctl -p err | tail -n 20 > $FILENAME-Err-last20-`date +%b\-%d\-%Y\-%T`
   CHOICE="this month (last 20)" ;;
  "--help" ) cat ./help.txt
             exit 0 ;;
  * )  echo "Unknown result, read help using parameter '--help' vith running script" 
       exit 0 ;;
esac

echo "ErrorLogs in $CHOICE add in $FILENAME succesful!"


