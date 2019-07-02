#!/bin/bash

mkdir -p $PREFIX/bin

make

cp CARNAC-LR $PREFIX/bin/carnac-lr

cp scripts/CARNAC_to_fasta $PREFIX/bin/carnac_to_fasta
cp scripts/paf_to_carnac.py $PREFIX/bin/paf_to_carnac.py
