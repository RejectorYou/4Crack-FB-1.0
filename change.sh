read_level(){
echo "=========================="
echo "Changer script type"
echo "=========================="
echo "1. Crack Easy"
echo "2. Crack Medium"
echo "3. Crack Hard"
echo "=========================="
echo -n "Select : "
read select

if [[ $select = 1 ]]
then

level="easy"

elif [[ $select = 2 ]]
then

level="medium"

elif [[ $select = 3 ]]
then

level="hard"

else

echo "=========================="
stupid=1
echo "You Are Stupid!"
sleep 1

fi
}

read_speed(){
echo "=========================="
echo "1. Speed 30"
echo "2. Speed 50"
echo "3. Speed 100"
echo "=========================="
echo "NOTE : Speed = start crack"
echo "       number account"
echo "=========================="
echo -n "Select : "
read select
if [[ $select = 1 ]]
then

speed=30

elif [[ $select = 2 ]]
then

speed=50

elif [[ $select = 3 ]]
then

speed=100

else

echo "=========================="
stupid=1
echo "You Are Stupid!"
sleep 1
fi
}

delete_crack(){
if [[ -f app/crack.py ]]
then
rm app/crack.py
echo "Old Crack file deleted"
echo "=========================="
fi
}

i=0

while [[ $i = 0 ]]
do
stupid=0
clear
read_level
clear
read_speed
clear


if [[ $stupid = 0 ]]
then
echo "=========================="
delete_crack
sleep 1
target="app/level/crack.py.$level.$speed"

for prgs in {1..100}
do
clear
echo "Level $level Speed $speed"
echo "=========================="
echo "Recode Progress $prgs%"
echo "=========================="
sleep 0.0001
done


if [[ -f $target ]]
then
cp $target app/crack.py

if [[ -f app/crack.py ]]
then
clear
echo "=========================="
echo "Change Success"
echo "=========================="

else
clear
echo "=========================="
echo "Change Fail"
echo "=========================="

fi


else

echo "File Target its not Found"
echo "=========================="
fi
break

else

break
fi

done
