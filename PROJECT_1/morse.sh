#!/bash/bin
function encode()
{
echo "Encoded string :"
x=$(cat $1/$2 )
y=${#x}
z=${x^^}
i=0
w=${z:$i:1}
while [ $i -lt $y ]

do

w=${z:$i:1}

if [ $w == A ]
then w=.-
echo "$w "
elif [ $w == B ]
then w=-...
echo "$w "
elif [ $w == C ]
then w=-.-.
echo "$w "
elif [ $w == D ]
then w=-..
echo "$w "
elif [ $w == E ]
then w=.
echo "$w "
elif [ $w == F ]
then w=..-.
echo "$w "
elif [ $w == G ]
then w=--.
echo "$w "
elif  [ $w == H ]
then w=....
echo "$w "
elif [ $w == I ]
then w=..
echo "$w "
elif [ $w == J ]
then w=.---
echo "$w "
elif [ $w == K ]
then w=-.-
echo "$w "
elif [ $w == L ]
then w=.-..
echo "$w "
elif [ $w == M ]
then w=--
echo  "$w "
elif [ $w == N ]
then w=-.
echo "$w "
elif [ $w == O ]
then w=---
echo  "$w "
elif [ $w == P ]
then w=.--.
echo "$w "
elif [ $w == Q ]
then w=--.-
echo "$w "
elif [ $w == R ]
then w=.-.
echo "$w "
elif [ $w == S ]
then w=...
echo "$w "
elif [ $w == T ]
then w=-
echo "$w "
elif [ $w == U ]
then w=..-
echo "$w "
elif [ $w == V ]
then w=...-
echo "$w "
elif [ $w == W ]
then w=.-=
echo "$w "
elif [ $w == X ]
then w=-..-
echo "$w "
elif [ $w == Y ]
then w=-.--
echo "$w "
elif [ $w == Z ]
then w=--..
echo "$w "
elif [ $w == 0 ]
then w=-----
echo "$w "
elif [ $w == 1 ]
then w=.----
echo "$w "
elif [ $w == 2 ]
then w=..---
echo "$w "
elif [ $w == 3 ]
then w=...--
echo "$w "
elif [ $w == 4 ]
then w=....-
echo "$w "
elif [ $w == 5 ]
then w=.....
echo "$w "
elif [ $w == 6 ]
then w=-....
echo "$w "
elif [ $w == 7 ]
then w=--...
echo "$w "
elif [ $w == 8 ]
then w=---..
echo "$w "
elif [ $w == 9 ]
then w=----.
echo "$w "
else echo " "
fi

i=$[i+1]

done


}

function decode()
{
echo "decoded string:"
x=$(cat $1/$2 )
N=1
K=$( echo "$x" | wc -w )

while [ $N -le $K ]

do

y=$( echo $x | cut -d " " -f $N )

if [ $y == .- ]
then echo "A"
elif [ $y == -... ]
then echo "B"
elif [ $y == -.-. ]
then echo "C"
elif [ $y == -.. ]
then echo "D"
elif [ $y == . ]
then echo "E"
elif [ $y == ..-. ]
then echo "F"
elif [ $y == --. ]
then echo "G"
elif  [ $y == .... ]
then echo "H"
elif [ $y == .. ]
then echo "I"
elif [ $y == .--- ]
then echo "J"
elif [ $y == -.- ]
then echo "K"
elif [ $y == .-.. ]
then echo "L"
elif [ $y == -- ]
then echo  "M"
elif [ $y == -. ]
then echo "N"
elif [ $y == --- ]
then echo  "O"
elif [ $y == .--. ]
then echo "P"
elif [ $y == --.- ]
then echo "Q"
elif [ $y == .-. ]
then echo "R"
elif [ $y == ... ]
then echo "S"
elif [ $y == - ]
then echo "T"
elif [ $y == ..- ]
then echo "U"
elif [ $y == ...- ]
then echo "V"
elif [ $y == .-- ]
then echo "W"
elif [ $y == -..- ]
then echo "X"
elif [ $y == -.-- ]
then echo "Y"
elif [ $y == --.. ]
then echo "Z"
elif [ $y == ----- ]
then echo "0"
elif [ $y == .---- ]
then echo "1"
elif [ $y == ..--- ]
then echo "2"
elif [ $y == ...-- ]
then echo "3"
elif [ $y == ....- ]
then echo "4"
elif [ $y == ..... ]
then echo "5"
elif [ $y == -.... ]
then echo "6"
elif [ $y == --... ]
then echo "7"
elif [ $y == ---.. ]
then echo "8"
elif [ $y == ----. ]
then echo "9"
else echo  " "

fi

N=$[N+1]

done
}
echo  "Dwse to onoma tou  fakelou poy vrisketai sto HOME DIRECTORY,mesa ston opoio  vriskete  to  arxeio"
read folder
echo "Dwse to onoma to onoma toy arxeiou"
read file
echo "An thelete na kanete encode patiste 1 ,enw an thelete na kanete decode patiste 2"
read j
if [ $j == 1 ]
then result=$(encode $folder $file)
echo "$result"
elif [ $j == 2 ]
then result=$(decode $folder $file)
echo "$result"
fi




























