#!/usr/bin/env bash

. ~/.nvm/nvm.sh

NODE_VERSIONS="
0.10
0.12
4
stable
"

for node_version in $NODE_VERSIONS
do
    nvm use $node_version
    rm -rf node_modules
    npm i
    npm t
    mv math-results*.xml ../results
done
