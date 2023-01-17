#!/bin/bash


echo "Arg from \$*:"
echo $*
for i in $* ; do
        echo $i
done

echo "Arg from \"\$*\":"
echo "$*"
for i in "$@" ; do
        echo $i
done

echo "Arg from \$@:"
echo $@
echo "Arg from \$@:"

for i in $@ ; do
	echo $i
done
echo "-------"
echo "$@"
echo "Arg from \"\$@\":"
for i in "$@" ; do
        echo $i
done
