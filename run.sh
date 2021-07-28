#! /bin/bash

export PLANG=$1
export FNAME=$2

cd $PWD

if [ $PLANG = cpp ]
then
	g++ -Wall -march=native -O2 $FNAME -o $FNAME.out
fi

if [ $PLANG = py ]
then
	python $FNAME
fi
