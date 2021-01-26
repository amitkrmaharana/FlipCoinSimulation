#!/bin/bash -x
isHead=0
isTail=1
echo "Welcome to Flip Coin Simulation Programm"
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq $isHead ]
then
	echo "Head wins the game"
else
	echo "Tail wins the game"
fi

