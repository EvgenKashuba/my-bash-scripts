#!/bin/bash
echo "Script with conditions"
X=$1
if [ -z $X ]; then
  echo "Script requires 1 number argument, please, enter it"
  read X
fi
if [[ $X =~ ^-?[0-9]+$ ]]; then
   if [ $X -lt 10 ]; then
     echo "Argument is less than 10"
   elif [ $X -gt 10 ]; then
     echo "Argument is more than 10"
   else echo "Argument is equal 10"
   fi

   (( 10 - $X )); echo "Exit code of (10 - $X)= $(( 10 - $X )) is: $?"

   for (( i=$X; i>0; i-- )); do
     if [ $(( $i/2*2 )) -eq $i ]; then
       echo "This is the even number: $i"
     else echo "This is the odd number: $i"
     fi
   done

else echo "Script requires 1 only number argument. Please, reload script one more"
fi
echo "You entered: $X"
