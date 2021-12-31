#!/bin/bash

PATH=$PATH:${HOME}/bin

jekyll build && cp -r _site/* ${HOME}/public_html/.

