#!/bin/bash

if [ "$1" == "telcat" ] && [ "$2" == "-a" ] && [ "$#" == 2 ]
then  echo "give name"
read name
echo "give surname"
read surname
echo "give city"
read city
echo "give number"
read number

echo ''$name' '$surname' '$city' '$number'' >> /home/user1/katalogos


elif [ "$1" == "telcat" ] && [ "$2" == "-l" ] && [ "$#" == 2 ]
then cat -b /home/user1/katalogos


elif [ "$1" == "telcat" ] && [ "$2" == "-s" ] && [ "$#" == 3 ]
then
sort -k $3,$3 /home/user1/katalogos

elif [ "$1" == "telcat" ] && [ "$2" == "-c" ] && [ "$#" == 3 ]
then
   if grep -q $3 /home/user1/katalogos;
   then
     echo -e "$(grep $3 /home/user1/katalogos)"
    else
     echo "pattern was not found"
    fi


elif [ "$1" == "telcat" ] && [ "$2" == "-d" ] && [ "$#" == 4 ]
  then
   if grep -q $3 /home/user1/katalogos;
   then
      if [ "$4" == "-b" ]
      then sed -i '/'$3'/a\\' /home/user1/katalogos
      sed -i '/'$3'/d' /home/user1/katalogos
      elif [ "$4" == "-r" ]
      then
      sed -i '/'$3'/d' /home/user1/katalogos
      fi
   else
   echo "pattern was not found"
    fi


elif [ "$1" == "telcat" ] && [ "$2" == "-n" ] && [ "$#" == 2 ]
then grep -c ^$ /home/user1/katalogos
echo "would you like to delete these lines ?(Y/N)"
read an
if [ "$an" == "Y" ]
then
sed -i '/^[[:space:]]*$/d' /home/user1/katalogos
elif [ "$an" == "N" ]
then echo "delete not made"
fi

else
echo "wrong expression"

fi



