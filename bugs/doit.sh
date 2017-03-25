#!/usr/bin/env bash

rm results.txt

for VERSION in 24.5 25.1; do
  for BRANCH in master repair-tramp; do
    for RAILS in nil t; do
      for TRAMP in nil t; do
        ./test.sh "$VERSION" "$BRANCH" "$RAILS" "$TRAMP"
        result=$?
        echo "EMACS($VERSION) BRANCH($BRANCH) RAILS($RAILS) TRAMP($TRAMP) RESULT($result)" | tee -a results.txt
      done
    done
  done
done
