#!/usr/bin/env sh
DOCKERHUB_USER_NAME=lptonussi

docker build -t $DOCKERHUB_USER_NAME/http-arangodb-client -f http-arangodb-client/Dockerfile ./http-arangodb-client

docker push $DOCKERHUB_USER_NAME/http-arangodb-client
