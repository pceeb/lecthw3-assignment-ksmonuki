#!/bin/bash
#This program prints any word in morse code based on morse code from in an input file in wide form
#The bash input should be in the following order: bash_script.sh input_file.txt input_word
#For example: morse_code_script_KM1.sh morse.txt K E I R A
#The input word must only include upper case letters and each letter must be separated by a space
#NOTE: There is an error in the printf for loop after certain letters (ie M and K). However, for other letters rest of the output matches the desired output from the second assignment.
#For example, the word K E I R A gives an error but the word A R E does not.


var=$(for i in "$@"; do grep -w "$i" $1; done)
#This first command line creates a list of variables of the input word letters and their respective morse codes

echo "The Morse Code for the input word is"
for i in $var
do
printf "$i\t"
done
#This second command line prints the variable list in wide form
