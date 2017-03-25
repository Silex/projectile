#!/usr/bin/env bash

VERSION="$1"
BRANCH="$2"
RAILS="$3"
TRAMP="$4"

exec docker run -it --rm -v $(pwd):/rootfs:ro --entrypoint=/rootfs/setup.sh silex/emacs:$VERSION -Q -l tests.el --eval "(test-projectile \"$BRANCH\" $RAILS $TRAMP)"
