#!/bin/bash

aws ecr describe-repositories --repository-names $1 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
   # aws ecr create-repository --repository-name $1
   echo "Repository not exist"
else 
    echo "repository $1 already exists "
fi