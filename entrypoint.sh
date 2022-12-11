#!/bin/bash

set -e

python verify-pr.py "fix: testing"
is_valid=false
echo $is_valid
echo "{is_valid}={$is_valid}" >> $GITHUB_OUTPUT
