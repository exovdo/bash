#!/bin/bash
echo "Enter name of system"
read system
echo "Enter name of program"
read program
ssh -YXq $system << XFORWARD
xhost +
DISPLAY=host:0.0
export DISPLAY
tcsh
setenv DISPLAY host:0.0
exit
exit
XFORWARD
ssh -YXq $system $program
exit
