#!/bin/bash

var_change() {
    local var1='local 1'
    local var2='local 2'
    echo Inside function: var1 is $var1 : var2 is $var2
    var1 = 'change again'
    var2 = '2 changed again'
}

var1='global 1'
var2='global 2'
echo Before function: var = $var1,var2 = $var2
var_change
echo After function: var1 = $var1 var2 = $var2
