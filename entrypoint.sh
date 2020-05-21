#!/bin/bash


TASK=$1
WORK_DIREDTORY=$2

cd ${GITHUB_WORKSPACE}/${WORK_DIREDTORY}


./gradlew ${TASK}
if [ $? -ne 0 ];then
  echo "failed ./gradlew ${TASK}"
  exit 1
fi

echo "Done"

