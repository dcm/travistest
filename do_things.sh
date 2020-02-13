#!/usr/bin/env bash

BLACK='black==19.10b0'
CMD="python3 -m pip install $BLACK"
echo "Running '$CMD' under $(python --version)"
$CMD

BC='python3 -m black --check -l 79 --exclude "vendor|node_modules" .'
echo "Running $BC"
$BC

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

echo "env under $(python --version)"
env

