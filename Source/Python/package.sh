#!/bin/bash
pushd $1
python3 setup.py sdist bdist_wheel
popd