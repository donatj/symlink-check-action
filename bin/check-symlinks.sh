#!/usr/bin/env bash

set -euo pipefail

BASEDIR="$(dirname "$0")"/..
FILES=$(find "$BASEDIR" -type l)

for F in $FILES; do
	if [ ! -e "$F" ] ; then
		echo "broken symlink $F"
		exit 1
	fi
done
