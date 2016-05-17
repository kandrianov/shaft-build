#!/bin/bash
FILE='./../../Makefile'
DATA="# SHAFT-BUILD \nBUILD_SRC = 'src'\nBUILD_LIB = 'lib'\nPRESETS = '--presets=node5,stage-0'\ninclude ./node_modules/shaft-build/Makefile\n# /SHAFT-BUILD"

if test -e $FILE && grep -q SHAFT-BUILD $FILE; then
	sed -i "/SHAFT-BUILD/,/\/SHAFT-BUILD/c\\\n${DATA}" $FILE
else
	printf "\n${DATA}" >> $FILE
fi
