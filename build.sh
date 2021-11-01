#!/bin/sh

cd ./dockerfiles/centos/is
docker build -t lahirulls/wso2is-for-m1:5.11.0-vanilla-centos .
docker push lahirulls/wso2is-for-m1:5.11.0-vanilla-centos

cd ./dockerfiles/ubuntu/is
docker build -t lahirulls/wso2is-for-m1:5.11.0-vanilla-ubuntu .
docker push lahirulls/wso2is-for-m1:5.11.0-vanilla-ubuntu

cd ./dockerfiles/centos/apim
docker build -t lahirulls/wso2apim-for-m1:4.0.0-vanilla-centos .
docker push lahirulls/wso2apim-for-m1:4.0.0-vanilla-centos

cd ./dockerfiles/ubuntu/apim
docker build -t lahirulls/wso2apim-for-m1:4.0.0-vanilla-ubuntu .
docker push lahirulls/wso2apim-for-m1:4.0.0-vanilla-ubuntu