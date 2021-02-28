#!/bin/bash

echo "give first integer"
read x
echo "give second integer"
read y

answer="Y"

while [ "$answer" == "Y" ];
do

echo "give destination's folder path"
read path

echo ""

num=$(echo 'obase=8;'$x'' | bc)
echo "1.Files in $path with permission  $num : "
lines1=$(find ""$path"" -perm ""$num"" -type f | wc -l)
echo "number of files : $lines1"
find ""$path"" -perm ""$num"" -type f


echo "2.all files into $path that had been modified in the last $y days : "
lines2=$(find ""$path"" -mtime -$y -type f | wc -l)
echo "number of files : $lines2"
find ""$path"" -mtime -$y -type f

echo "3.all folders into $path that had been accessed in the last $y days : "
lines3=$(find ""$path"" -atime -$y -type d | wc -l)
echo "number of folders : $lines3"
find ""$path"" -atime -$y -type d

echo "4.socket or pipe files into $path"
linesa=$(find ""$path"" -type s | wc -l)
linesb=$(find ""$path"" -type p | wc -l)
lines4=$(($linesa+$linesb))
echo "number of files : $lines4"
find ""$path"" -type s
find ""$path"" -type p

echo "5.all empty files at $path"
lines5=$(find ""$path"" -maxdepth 1 -type f -empty | wc -l)
echo "number of files : $lines5"
find ""$path"" -maxdepth 1 -type f -empty

echo ""

lines=$(($lines2+$lines3+$lines5))
echo "total number of displayed files : $lines"

echo ""

echo "case1_output files: $lines1"
echo "case2_output files: $lines2"
echo "case3_output files: $lines3"
echo "case4_output files: $lines4"
echo "case5_output files: $lines5"



echo "Do you want to check another folder ?(Y/N)"
read answer

done

