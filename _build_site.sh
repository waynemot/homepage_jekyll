#!/bin/bash

PATH=$PATH:${HOME}/bin:/usr/local/rvm/gems/ruby-2.6.4\@wmotycka_home/bin/jekyll

if [[ `uname -n` -eq "csce" ]]
then
    rebuild=0
    for f in  `find . -type f -not -path "*/*.sh" -not -path "./.git/*" -not -path "./.DS_Store" -not -path "./.jekyll-cache/*" -not -path "./_site/*" -not -path "./.idea/*" -not -path "./.git-ignore"`
    do
        if [ $f -nt ../index.html ]
        then
          rebuild=1
          break
        fi
    done
    if [[ $rebuild = 1 ]]
    then
        jekyll build JEKYLL_ENV=production && cp -r _site/* ${HOME}/public_html/.
    fi
else
    echo "this script only executes on the CSCE system"
    exit 1
fi
