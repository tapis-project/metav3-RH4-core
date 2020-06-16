#!/bin/bash
set -e

echo "###### stop container #####"

export MONGO_URI=mongodb://tapisadmin:d3f%40ult@aloe-dev08.tacc.utexas.edu:27019/?authSource=admin
export JAVA_MEM=" -Xms2G -Xmx2G "

docker-compose down