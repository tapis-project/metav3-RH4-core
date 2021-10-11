#####################################################
#   Custom image build for Meta RestHeart Server
#   includes removing the Entrypoint and using the CMD for
#   java like the security service. Based on
#   Openjdk image.
#
# LABEL maintainer="TACC <cicsupport@tacc.utexas.edu>"
# LABEL rh_core_ver=4.1.6
#
# Run from the Docker/restheart-server-build directory of the project
# Usage:
#   build-docker-image.sh
#
#   export MONGO_URI=mongodb://tapisadmin:d3f%40ult@aloe-dev08.tacc.utexas.edu:27019/?authSource=admin
#   export JAVA_MEM=" -Xms2G -Xmx2G "
#   export TAPIS_CMD="java $JAVA_MEM -Dfile.encoding=UTF-8  -server -jar restheart.jar etc/restheart.yml --envFile etc/config.properties"
#   docker run -e MONGO_URI=$MONGO_URI tapis/tapis-meta-rh-core:4.1.6 $TAPIS_CMD
#####################################################

FROM openjdk:11.0.5-jdk-stretch

LABEL maintainer="cicsupport@tacc.utexas.edu"
LABEL rh-server-ver="4.1.6"

RUN apt update; apt install nano

WORKDIR /opt/restheart
COPY ./etc/config.properties ./etc/restheart.yml etc/
COPY ./restheart.jar /opt/restheart/

CMD ["/bin/bash"]
EXPOSE 8080 4443 8000 8009
