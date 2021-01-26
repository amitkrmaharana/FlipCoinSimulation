#!/bin/bash -x
isHead=0
isTail=1
head_count=0
tail_count=0
echo "Welcome to Flip Coin Simulation Programm"
for((i=0;i<20;i++))
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq $isHead ]
	then
		(( head_count++ ))
	else
		(( tail_count++ ))
	fi
done
echo "HEADS has won $head_count times and TAILS has won $tail_count times"
