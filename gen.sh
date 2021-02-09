#!/bin/bash
set -e

PROJECT_NAME=$1

if [ -z "${PROJECT_NAME}" ]; then
  echo "Usage: gen.sh <project_name>"
  exit -1
fi

cp -r template/ "${PROJECT_NAME}"
for f in $(find "${PROJECT_NAME}"); do
  if [ -f "$f" ]; then
    sed -i -e "s/{{{ PROJECT_NAME }}}/${PROJECT_NAME}/g" "$f"
  fi
done

cd "${PROJECT_NAME}" && git init 
