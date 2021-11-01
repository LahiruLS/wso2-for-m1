#!/bin/sh

cd ./dockerfiles/centos/is
docker build -t lahirulls/wso2is-for-m1:5.11.0-vanilla-centos .
docker push lahirulls/wso2is-for-m1:5.11.0-vanilla-centos

cd ./dockerfiles/ubuntu/is
docker build -t lahirulls/wso2is-for-m1:5.11.0-vanilla-ubuntu .
docker push lahirulls/wso2is-for-m1:5.11.0-vanilla-ubuntu

cd ./dockerfiles/centos/is-for-subscribed
docker build -t lahirulls/wso2is-for-m1:5.11.0-centos .
docker push lahirulls/wso2is-for-m1:5.11.0-centos

cd ./dockerfiles/ubuntu/is-for-subscribed
docker build -t lahirulls/wso2is-for-m1:5.11.0-ubuntu .
docker push lahirulls/wso2is-for-m1:5.11.0-ubuntu

cd ./dockerfiles/centos/apim
docker build -t lahirulls/wso2apim-for-m1:4.0.0-vanilla-centos .
docker push lahirulls/wso2apim-for-m1:4.0.0-vanilla-centos

cd ./dockerfiles/ubuntu/apim
docker build -t lahirulls/wso2apim-for-m1:4.0.0-vanilla-ubuntu .
docker push lahirulls/wso2apim-for-m1:4.0.0-vanilla-ubuntu

cd ./dockerfiles/centos/apim-for-subscribed
docker build -t lahirulls/wso2apim-for-m1:4.0.0-centos .
docker push lahirulls/wso2apim-for-m1:4.0.0-centos

cd ./dockerfiles/ubuntu/apim-for-subscribed
docker build -t lahirulls/wso2apim-for-m1:4.0.0-ubuntu .
docker push lahirulls/wso2apim-for-m1:4.0.0-ubuntu