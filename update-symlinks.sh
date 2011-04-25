#!/bin/bash
# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname "$SCRIPT"`

pushd "$SCRIPTPATH"
mkdir -p bad-ln
FILES="header.tex pset.cls $(ls | egrep -e "(sty|cmap|def|fd)")"
PATHS=".. ../style-files ../more-style-files"
git update-index --no-assume-unchanged $FILES
CHANGED=""
for i in $FILES; do
	if [ -L "$i" ]; then
		echo $i;
		USEPATH="$(readlink -f "$i")"
		mv "$i" bad-ln/
		cp "$USEPATH" ./
		git add "$i"
		rm $i
		mv bad-ln/$i ./
		CHANGED="$CHANGED $i"
	else
		echo Looking for $i
		for directory in $PATHS; do
			if [ -e "$directory/$i" ]; then
				echo Found in $directory
				ln -sf "$directory/$i" ./
				CHANGED="$CHANGED $i"
				break
			fi
		done
	fi
done
git update-index --assume-unchanged $CHANGED
popd
