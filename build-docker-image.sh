#!/bin/bash
set -e

echo "###### start build.sh #####"

cd ./Docker
pwd

export RHVERSION=4.1.6

echo "###### Building Docker image for MetaV3 RH Server Core Version "$RHVERSION
docker build -t tapis/tapis-meta-rh-core:$RHVERSION .

docker push tapis/tapis-meta-rh-core:$RHVERSION
echo "###### end build.sh #####"
