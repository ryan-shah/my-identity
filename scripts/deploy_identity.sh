#!/bin/sh

# If a command fails then the deploy stops
set -e

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi

printf "deploying local updates"

git add .

git commit -m "$msg"

git push origin main
