#!/bin/bash
mkdir -p "$2/$3"

pushd $1
python3 -m grpc_tools.protoc -I./ \
                             --python_out="$2/$3" \
                             --grpc_python_out="$2/$3" \
                             **/*.proto
popd

# Get all folders, run mkinit
for dir in $2/$3/*/ 
do
    mkinit ${dir%*/} > ${dir%*/}/__init__.py
done

sed "s@{PACKAGENAME}@$3@;s@{REPOSITORY_URL}@$4@;s@{README_FILE}@$5@;s@{VERSION}@$6@" setup.py > $2/setup.py