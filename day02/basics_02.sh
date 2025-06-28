#!/bin/bash
#This is the one line comment
<< comment
This is the multi  line comment

comment
Name="Shubham"
echo "My name is $Name and date is $(date)"

echo "what is your name"

read username

echo "welcome $username"
#sudo useradd -m $username


#echo "new User Added!"

read -p "Jetha ne mudke kisko dekha:" bandi
read -p "jeta ka pyaar %" pyaar

if [[ "$bandi" == "daya bhabhi" ]];
then
	echo "jetha is loyal"
elif [[ "$pyaar" -ge 100 ]];
then
	echo "jetha is still loyal"
else
	echo "jetha ne babita ko dekha"
fi


