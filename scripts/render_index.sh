#!/usr/bin/env bash

Rscript -e "source('./scripts/render_index.R')" 


if [[ "$(git status --porcelain)" != "" ]]; then
    git config --global user.name 'malcon-pngimr'
    git config --global user.email 'malcon@pngimr.org.pg'
    git add -A
    git commit -m "Auto render of the site on $(date)"
    git push origin 
else
    echo "Nothing to commit..."
fi
