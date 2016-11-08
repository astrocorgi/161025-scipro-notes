#!/bin/bash

myvar = $(ls /etc | wc -l)
echo There are $myvar entries in the directory /etc
