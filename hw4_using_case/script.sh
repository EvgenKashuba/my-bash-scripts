#!/bin/bash
echo "Script with case"
X=$1

case $X in
    *[0-9] )       echo "You enter: $X" ;;
    * )            echo "Script requires 1 number argument, please, enter it"
                   read X ;;
esac

if [[ $X =~ ^-?[0-9]+$ ]]; then
  case $X in
    *[0,2,4,6,8]) echo "This is even number: $X" ;;
    *[1,3,5,7,9]) echo "This is odd number: $X" ;;
  esac
  for (( i=$X; i>0; i-- )); do
     if [ $(( $i%2 )) -eq 0 ]; then
#      arr_even [] += arr_even [i]
       echo "This is the even number: $i"
     else
#      arr_odd [] += arr_odd [i]
       echo "This is the odd number: $i"
     fi
  done

else echo "Script requires 1 only number argument. Please, reload script one more"
fi
echo "You entered: $X"
#echo $arr_add []
