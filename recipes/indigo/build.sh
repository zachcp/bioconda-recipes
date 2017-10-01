#!/bin/bash
 

mkdir -p $PREFIX

if [ `uname` == Darwin ]; then
    export MACOSX_DEPLOYMENT_TARGET=10.9
    python build_scripts/indigo-release-libs.py --preset=mac10.9
    
else
    cp Linux-amd64/bin/* $PREFIX/bin/

