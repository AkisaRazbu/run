#! /bin/bash

export PLANG=$1
export FNAME=$2

cd $PWD

# CPP runner

if [ $PLANG = cpp ]
then
    g++ -Wall -march=native -O2 $FNAME.$PLANG -o $FNAME
    ./$FNAME
fi

# C runner

if [ $PLANG = c ]
then
	gcc -Wall -march=native -O2 $FNAME.$PLANG -o $FNAME
	./$FNAME
fi

# Haskell runner

if [ $PLANG = hs ]
then
	ghc -O2 $FNAME.$PLANG -o $FNAME
	./$FNAME
fi

# Python runner

if [ $PLANG = py ]
then
    python $FNAME.$PLANG ; printf "\nAborted\n" 
fi
