#!/bin/bash

viables=0
END=732736
for ((i=256310;i<=END;i++)); do
    istring="$i"
    n1="${istring:0:1}"
    n2="${istring:1:1}"
    n3="${istring:2:1}"
    n4="${istring:3:1}"
    n5="${istring:4:1}"
    n6="${istring:5:1}"
    if echo "$istring" | grep -q '\(.\).*\1' ; then  
        if ((n1 <= n2)) && ((n2 <= n3)) && ((n3 <= n4)) && ((n4 <= n5)) && ((n5 <= n6))  ; then
            echo "$istring"
            let "viables++"
            echo $viables
        fi
    fi
done
echo $viables