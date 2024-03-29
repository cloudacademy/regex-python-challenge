#!/bin/bash

(
        flock -x -w 20 200 || exit 1

        check=$1
        file=$2
        expected=$3

        tmpsrcfile=$(mktemp /tmp/check.XXXXXX.py)
        tmpoutfile=$(mktemp /tmp/check.XXXXXX.txt)

        cp ../src/$file $tmpsrcfile
        cat ./texts/$check.py >>$tmpsrcfile

        python3 $tmpsrcfile >$tmpoutfile
        grep -q "$expected" $tmpoutfile
) 200>/tmp/check.exclusivelock
