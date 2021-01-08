#!/bin/bash
mkdir ./pegboardhub/
cd ./pegboardhub/
git clone git@github.com:PegboardHub/handyman.git
git clone git@github.com:PegboardHub/pegboard.git
git clone git@github.com:PegboardHub/concrete.git

get_abs_path() {
  # $1 : relative filename
  echo "$(cd "$(dirname ".")" && pwd)/"
}

PEGBOARD_PATH=$(get_abs_path)
grep -qxF 'PEGBOARD_PATH' ~/.aliases || echo "alias PEGBOARD_PATH=\"$PEGBOARD_PATH\"" >> ~/.aliases

source ~/.aliases
cd "$PEGBOARD_PATH/handyman/"
fastinstall
