#!/bin/bash

set -euo pipefail

echo $USER >> file

git add .
git commit -m "append one line"
git push
