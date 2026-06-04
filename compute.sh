#!/bin/bash
############################
# Autor: Kemedjio anicet
# Date: 03/06/2026
#
# Shell script to print number divisible by 3 && 5 and not by 15

###############################

for i in {1..100};do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then
    echo $i
fi;
done 

######################################
#
#Shell script to find the number of occurrence of S in misissipi
#######################################

x=mississipi
grep -o "s" <<<"$x" | wc -l
