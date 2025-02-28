#!/bin/bash

#Wrapper for pylint style checks for automation/tools

pylint_files=$(git show HEAD --name-only --format=%n | grep '.*\.py')
if [ -n "$pylint_files" ];then
pushd $(git rev-parse --show-toplevel) > /dev/null
echo "****************PYLINT WARNINGS******************"
pylint $pylint_files
popd > /dev/null
fi
