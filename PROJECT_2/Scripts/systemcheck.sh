#!/bin/bash

a=$(who | sort -uk1,1 | wc -l)
b=$(ls -l /dev | grep "^d" | wc -l)
c=$(wc -l /etc/passwd)
d=$(ls -l / | grep "^d" | wc -l)
e=$(find /bin -type f -perm 755 | wc -l)

echo "You have  "$a" users logged in on the system at this moment.
On the /dev directory there are "$b" registered users.
In the /etc/passwd file there are "$c"  lines.
Root directory has "$d"  subdirectories.
/bin directory has "$e"  executable files."

