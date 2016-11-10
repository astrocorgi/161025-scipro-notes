#!/bin/bash

space_free=$( df -h | awk '{ print $5}'  | sort -n | tail -n 1 | sed 's/%//' ) #disk free shows mounted volumes and how much space is on them. the pipe passes the output of df into awk print. "sort -n" sorts the printing of the fifth column of df numerically. the sed command uses regular expressions, substitute the "%" for nothing

case $space_free in
    [1-5]*)
	echo Plenty of space available
	;;
    [6-7]*)
	echo Getting filled up
	;;
    8*) #80 or greater
	echo Need to clean up this drive!
	;;
    9*) #90 percent or greater
	echo It is full!
	;;
    *)
	echo we did something wrong
	;;
esac
