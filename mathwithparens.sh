#!/bin/bash

#for expr you need specially formatted spaces, for double brackets the spaces don't matter

a=$(( 4+5 )) #spaces not? mandatory
echo $a
a=$((3+5)) #no spaces here
echo $a
b=$(( a + 3 ))
echo $b
b=$(( $a + 4 ))
echo $b
(( b++ ))
echo $b
(( b += 3 )) #b = b+3
echo $b
a=$(( 4 * 5 ))
echo $a
