#!/usr/bin/env sh

rm -rf /data/output/*
cp -f /data/Doxyfile /data/src/Doxyfile
doxygen
rm -f /data/src/Doxyfile
