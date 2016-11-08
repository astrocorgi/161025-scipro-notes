#!/bin/bash

if [ $1 -gt 42 ] #picky about spaces here. gt= greater than
then
    echo Hey that\'s a bigger number than 42
    pwd
elif   [ $1 -lt 42 ]
then
    echo Hey that\'s less than 42
fi #so weird


