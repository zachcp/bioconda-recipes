#!/bin/bash
 

mkdir -p $PREFIX/bin

if [ "$(uname)" == "Darwin" ]; then
  export MACOSX_DEPLOYMENT_TARGET=10.9
  python build_scripts/indigo-release-libs.py --preset=mac10.9 --find-cairo --find-pixman
  python build_scripts/indigo-release-libs.py --preset=mac10.9 --find-cairo --find-pixman
else
  python build_scripts/indigo-release-libs.py  --preset=linux64 --find-cairo --find-pixman
  python build_scripts/indigo-release-utils.py --preset=linux64 --find-cairo --find-pixman
fi