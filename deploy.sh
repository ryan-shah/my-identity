#!/bin/sh

# If a command fails then the deploy stops
# set -e

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi

sh ./scripts/deploy_site.sh "$msg"

sh ./scripts/deploy_theme.sh "$msg"

sh ./scripts/deploy_identity.sh "$msg"
