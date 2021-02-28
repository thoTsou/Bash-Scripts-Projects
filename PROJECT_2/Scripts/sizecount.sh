#!/bin/bash

echo "give an integer"
read x

if [ $x -gt 0 ] && [ $x -le 24 ]
  then echo "legal pick"
        lines=$(find /home/user1/Desktop -newerct "2019-05-15 $x:00:00" -not -newerct "2019-05-15 $x:59:00+1" | wc -l)
       if [ $lines -eq 0 ];
        then
        echo "find returned nothing"
       fi

       if [ $lines -gt 0 ];
       then
       find /home/user1/Desktop -newerct "2019-05-15 $x:00:00" -not -newerct "2019-05-15 $x:59:00+1" -exec mv -t /home/user1/timefile {} +
       echo "action was made"
       fi

 else echo "illegal pick"
 fi
