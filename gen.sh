#!/bin/bash
for i in `seq 0 $1`; do
	z=$(echo "scale=5; $i/$1" | bc -l)
	./slices -i descr.json -o output_$i.png -z $z
done