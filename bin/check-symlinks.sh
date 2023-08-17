#!/usr/bin/env bash

set -euo pipefail

if [ $# -ne 1 ] ; then
	echo "Usage: $0 <basedir>"
	exit 1
fi

BASEDIR="$1"
if [ ! -d "$BASEDIR" ] ; then
	echo "BASEDIR $BASEDIR does not exist"
	exit 1
fi

FILES=$(find "$BASEDIR" -type l)

ERROR=0
for F in $FILES; do
	if [ ! -e "$F" ] ; then
		LINK=$(readlink "$F")
		echo "::error file=$F,line=1::Broken symlink to '$LINK'"
		ERROR=1
	fi
done

exit $ERROR
