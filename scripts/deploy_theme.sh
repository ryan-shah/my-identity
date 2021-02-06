#!/bin/sh

# If a command fails then the deploy stops
set -e

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi

printf "deploying theme updates"

cd /themes/awesome-identity/

git add .

git commit -m "$msg"

git push origin master
