#!/bin/bash

CHANGED=$(git remote update && git status)

while [ 1 ]; do
if [ -n "$CHANGED" ]; then
    git pull
    echo "Repository UPDATED!!"
else
    echo "Repository UP-TO-DATE!!"
fi
sleep 30
done
