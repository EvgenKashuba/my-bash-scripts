#!/bin/bash
echo "This script's name is: $0"
echo "First argument is: $1 and second argument is: $2"
echo "There are $# arguments"
echo "ab" "cde" "fgijk"
echo "Last argument in previous command is \"$_\""
echo "Current shell PID: $$"
echo "How to \$? works:"
echo "Previous command exit code: $?"
cat dert
echo "Previous command exit code: $?"
echo "The end"
