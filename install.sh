#!/bin/bash
FILE='./../../Makefile'
DATA="# SHAFT-BUILD\n#\n# Settings:\n#   BUILD_SRC = 'src'\n#   BUILD_LIB = 'lib'\n#   PRESETS = '--presets=node5,stage-0'\n#\n# Commands:\n#   build\n#   build-with-sources\n#   build-and-watch\n#   build-with-sources-and-watch\n#   clean-build\n#\ninclude ./node_modules/shaft-build/Makefile\n# /SHAFT-BUILD"

if test -e $FILE && grep -q SHAFT-BUILD $FILE; then
	sed -i "/SHAFT-BUILD/,/\/SHAFT-BUILD/c\\\n${DATA}" $FILE
else
	printf "\n${DATA}" >> $FILE
fi
