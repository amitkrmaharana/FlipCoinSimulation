#!/bin/bash -x
isHead=0
isTail=1
head_count=0
tail_count=0
echo "Welcome to Flip Coin Simulation Programm"
while [ $head_count -lt 21 ] && [ $tail_count -lt 21 ]
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq $isHead ]
	then
		(( head_count++ ))
	else
		(( tail_count++ ))
	fi
done
if [ $head_count -eq $tail_count ]
then
	echo "It is a TIE"
elif [ $head_count -gt $tail_count ]
then
	diff=$((head_count-tail_count))
	echo "HEADS won by $diff flip throws"
else
	diff=$((tail_count-head_count))
	echo "TAILS won by $diff flip throws"
fi

