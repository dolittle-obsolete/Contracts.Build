#!/bin/bash
pushd $1
python3 -m twine upload dist/*
popd