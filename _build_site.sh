#!/bin/bash

PATH=$PATH:${HOME}/bin

if [[ `uname -n` -eq "csce" ]]
then
    jekyll build && cp -r _site/* ${HOME}/public_html/.
else
    echo "this script only executes on the CSCE system"
    exit 1
fi
