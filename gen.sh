#!/bin/bash
for i in `seq 0 $1`; do
	z=$(echo "scale=5; $i/$1" | bc -l)
	out=$(printf "output_%d.png" $i)
	./slices -i $2 -o $out -z $z
done
