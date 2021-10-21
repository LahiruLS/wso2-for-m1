#!/bin/sh

set -e

# volume mounts
config_volume=${WORKING_DIRECTORY}/wso2-config-volume
artifact_volume=${WORKING_DIRECTORY}/wso2-artifact-volume

# check if the WSO2 non-root user home exists
test ! -d ${WORKING_DIRECTORY} && echo "WSO2 Docker non-root user home does not exist" && exit 1

# check if the WSO2 product home exists
test ! -d ${WSO2_SERVER_HOME} && echo "WSO2 Docker product home does not exist" && exit 1

# copy any configuration changes mounted to config_volume
test -d ${config_volume} && [ "$(ls -A ${config_volume})" ] && cp -RL ${config_volume}/* ${WSO2_SERVER_HOME}/
# copy any artifact changes mounted to artifact_volume
test -d ${artifact_volume} && [ "$(ls -A ${artifact_volume})" ] && cp -RL ${artifact_volume}/* ${WSO2_SERVER_HOME}/

# update the WSO2 identity server
if [[ -n "$WSO2_USER" ]]
then
    echo "WSO2 update tool will not run as the wso2 user is not configured. If required please set WSO2_USER and WSO2_USER_PASS environment variables."
else
    sh ${WSO2_SERVER_HOME}/bin/wso2update_linux --username ${WSO2_USER} --password ${WSO2_USER_PASS}
fi

# start WSO2 Carbon server
sh ${WSO2_SERVER_HOME}/bin/wso2server.sh "$@"
