#!/bin/bash
 

mkdir -p $PREFIX

if [ `uname` == Darwin ]; then
    export MACOSX_DEPLOYMENT_TARGET=10.9
    $PYTHON build_scripts/indigo-release-libs.py --preset=mac10.9
    $PYTHON build_scripts/indigo-release-libs.py --preset=mac10.9
else
  $PYTHON build_scripts/indigo-release-libs.py --preset=linux64
  $PYTHON build_scripts/indigo-release-utils.py --preset=linux64
fi