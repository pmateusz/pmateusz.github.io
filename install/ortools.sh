#!/bin/sh

if [ "$1" == "" ]; then
    echo "Pass or-tools project directory"
    return 1
fi

OR_TOOLS_FILE="libortools.so"
OR_TOOLS_FILE_PATH="$1/lib/$OR_TOOLS_FILE"

if [ ! -f $OR_TOOLS_FILE_PATH ]; then
    echo "Failed to find $OR_TOOLS_FILE_PATH file"
    return 1
fi

LIB_PATH="/usr/local/lib/ortools"
if [ ! -e $LIB_PATH ]; then
    mkdir -p $LIB_PATH
fi

\cp $OR_TOOLS_FILE_PATH $LIB_PATH
ldconfig -l "$LIB_PATH/$OR_TOOLS_FILE"

INCLUDE_PATH="/usr/local/include/ortools"
if [ ! -e $INCLUDE_PATH ]; then
    mkdir -p $INCLUDE_PATH
fi

OR_TOOLS_INCLUDE_DIRECTORY="$1/src/"
OR_TOOLS_INCLUDE_GEN_DIRECTORY="$OR_TOOLS_INCLUDE_DIRECTORY/gen/"
rsync -r --exclude 'gen/*' --include '*/' --include "*.h" --exclude '*' --prune-empty-dirs $OR_TOOLS_INCLUDE_DIRECTORY $INCLUDE_PATH
rsync -r --include '*/' --include "*.h" --exclude '*' --prune-empty-dirs $OR_TOOLS_INCLUDE_GEN_DIRECTORY $INCLUDE_PATH