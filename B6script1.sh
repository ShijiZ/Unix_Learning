#!/bin/bash
# demonstrate variable scope 1

var1=blah
var2=foo

# Let's varify their current value
echo "$0 :: var1: $var1; var2: $var2"

export var1
./B7script2.sh

# Let's see what are they now
echo "$0 :: var1: $var1; var2: $var2"
