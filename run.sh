#! /bin/bash

export PLANG=$1
export FNAME=$2

cd $PWD

if [ $PLANG = cpp ]
then
    g++ -Wall -march=native -O2 $FNAME.$PLANG -o $FNAME
    ./$FNAME
fi

if [ $PLANG = py ]
then
    python $FNAME.$PLANG ; printf "\nAborted\n" 
fi

if [ $PLANG = c ]
then
	gcc -Wall -march=native -O2 $FNAME.$PLANG -o $FNAME
	./$FNAME
fi
