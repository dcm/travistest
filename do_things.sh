#!/usr/bin/env bash

echo "'which python2' under $(python --version)"
which python2 || true

echo "'which python3' under $(python --version)"
which python3 || true

echo "printing entire PATH"
OIFS="$IFS"
IFS=":"
for d in $PATH; do
    echo "Contents of $d:"
    ls -Flash "$d" | sed -E 's/^/\t/' || true
done


