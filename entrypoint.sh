#!/bin/bash


task=$1
workingDirectory=$2

cd ${GITHUB_WORKSPACE}/${workingDirectory}


./gradlew $task
echo "Done"

