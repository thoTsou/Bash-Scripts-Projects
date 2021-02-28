#!/bin/bash
echo  "Dwse to onoma toy fakelou pou vriskete mesa sto HOME DIRECTORY,mesa ston opoio vrisketai  to  arxeio poy thelete"
read folder
echo "Dwse to onoma to onoma toy arxeiou"
read file

y=10
while [ $y -ne 0 ]
do
echo "Patiste ton ari8mo 1 gia na kanate anazitisi stis eggrafes"
echo "Patiste ton ari8mo 2 gia na dwsete ta stoixeia  enos neoy  pelati"
echo "Patiste ton ari8mo 3 gia na diagrapsete kapoion pelati"
echo "Patiste ton ari8mo 4 gia na emfanisete olous tous pelates"

read y

case $y in

1)
echo "Dwste kapoio stoixeio tou pelati ton opoio psaxnete"
read z
x=$( grep -n ""$z"" "$folder"/"$file" )
echo "$x"
;;

2)
echo "Dwste ta stoixeia tou neoy pelati"
read z
if grep -qF "$z" "$folder"/"$file"
then
   echo "Diploeggrafi"
   echo "Patiste 1 gia na anairesete thn eggrafi , alliws patiste 2 gia na tropopoiisete ta stoixeia poy eisagate"
   read v
    if [ $v == 2 ]
    then echo "Dwste pali ta stoixeia tou neoy pelati"
     read z
     echo "$z" >> "$folder"/"$file"
    fi
else
   echo "Epitixis eggrafi"
echo "$z" >> "$folder"/"$file"
fi
;;

3)
echo "Dwste kapoio stoixeio tou pelati ton opoio psaxnete"
read z
x=$( grep -n ""$z"" "$folder"/"$file" )
echo "$x"
k=$ echo "${x:0:1}"
echo "Eiste sigouros gia tin diagrafi ?An nai patiste Y alliws patiste N "
read answer
if [ $answer == Y ]
then
sed -i "$k"'d' "$folder"/"$file"
fi
;;

4)
sed '/"$z"/d' "$folder"/"$file"
;;
*)
echo "Den dwsate kapoia apo tis epiloges 1-4"
;;

esac

echo "An teleiwsate patiste 0 , alliws patiste ton 1 gia na sas emfanistei i arxiki o8oni"
read y

done
