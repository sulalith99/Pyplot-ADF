#!/bin/bash
#This script converts the dftb absorption data

#get the location of input file
read -p 'output file?' inputfile

echo "this is A DFTB file"
grep "Dip.-len." $inputfile > abstemp.data
awk '{print    NR, $2, $2*27.211, $4}' abstemp.data > abs.data 
echo $inputfile

rm abs_*

/homes/sulalith/Research/Fortran/tddft+tb-plots/./a.out

echo ""
read -p "Name for the output (omit any extensions): " outname

#echo "Curve "$outname".rkf" >> $outname.csv
awk '{print $1" "$2}' abs_gauss.data >> $outname.csv

rm abs_gauss.data
rm abs_stick.data
rm abstemp.data

awk '{print $1","$2","$3","$4}' abs.data > absdata.csv
echo "number,Excitation energy (Hartree),Excitation energy (eV),Oscillator Strength" >> abs.csv
sort -t, -r -nk4 absdata.csv >> abs.csv

rm abs.data
rm absdata.csv
