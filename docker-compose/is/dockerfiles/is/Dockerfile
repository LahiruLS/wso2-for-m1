# set base Docker image to WSO2 Identity Server Docker image with latest WSO2 Updates
FROM docker.wso2.com/wso2is:5.11.0.0
LABEL maintainer="WSO2 Docker Maintainers <dev@wso2.org>"

# build arguments for external artifacts
ARG MYSQL_CONNECTOR_VERSION=8.0.17

# add MySQL JDBC connector to server home as a third party library
ADD --chown=wso2carbon:wso2 https://repo1.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_CONNECTOR_VERSION}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar ${WSO2_SERVER_HOME}/repository/components/dropins/
