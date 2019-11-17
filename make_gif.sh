#!/bin/bash

rm  result.gif 
rm  *.png 

gnuplot psi_gif.gnuplot

for i in $(seq 0 9)
do
mv psi_${i}.png psi_0${i}.png
done

convert -delay 5 -loop 0 *.png result.gif

