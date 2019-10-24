#!/bin/bash
pushd $1
python3 -m grpc_tools.protoc -I./ \
                             --python_out=$2 \
                             --grpc_python_out=$2 \
                             **/*.proto
popd

# Get all folders, run mkinit
for dir in $2/*/ 
do
    mkinit ${dir%*/} > ${dir%*/}/__init__.py
done
