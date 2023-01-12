#!/bin/bash

echo "This script manage the service script.sh"
echo "For manage type next: [start | stop | restart] "

read X

case $X in
  "start"   ) sleep 9999 &
              echo "Service is started"
            ;;
  "stop"    ) kill -9 `pidof sleep`
              echo "Service stopped"
            ;;
  "restart" ) kill -9 `pidof sleep`
	      sleep 9999 &
              echo "Service restarted"
            ;;
  *         ) echo "Unknoun result. Usage [start | stop | restart]" ;;
esac
