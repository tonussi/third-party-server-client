#!/usr/bin/env sh
DOCKERHUB_USER_NAME=lptonussi

docker build -t $DOCKERHUB_USER_NAME/http-mongo-server -f dockers/http-mongo-server/Dockerfile .
docker build -t $DOCKERHUB_USER_NAME/http-mongo-client -f dockers/http-mongo-client/Dockerfile .

docker push $DOCKERHUB_USER_NAME/http-mongo-server
docker push $DOCKERHUB_USER_NAME/http-mongo-client
