#!/bin/bash
echo "Hello 1"

set -e

echo "Hello 2"
is_valid = false
echo $is_valid
echo "::set-output name=is_valid::$is_valid"
