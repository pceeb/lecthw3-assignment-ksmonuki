#!/bin/bash
#This program prints any word in morse code based on morse code from in an input file
#The bash input should be in the following order: bash_script.sh input_file.txt input_word
#For example: morse_code_script_KM1.sh morse.txt K E I R A
#The input word must only include upper case letters and each letter must be separated by a space

var=$(for i in "$@"; do grep -w "$i" $1; done)
#This first command line creates a list of variables of the input word letters and their respective morse codes

echo "The Morse Code for the input word is"
echo "$var"
#This second command line prints the variable list in long form

