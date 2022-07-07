#!/usr/bin/env sh

k3d cluster create hermes --api-port 6550 -p "8081:80@loadbalancer" --agents 6
export KUBECONFIG="$(k3d kubeconfig write hermes)"

kubectl apply -f k8s/mongo/mongo-namespace.yml
kubectl apply -f k8s/mongo/mongo-secret.yml
kubectl apply -f k8s/mongo/mongo.yml
kubectl apply -f k8s/mongo/mongo-configmap.yml
kubectl apply -f k8s/mongo/mongo-express.yml
kubectl apply -f k8s/mongo/mongo-ingress.yml

kubectl get po -n kube-system
kubectl get cm -n mongodb-namespace
kubectl get deploy -n mongodb-namespace
kubectl get rs -n mongodb-namespace
kubectl get po -n mongodb-namespace
kubectl get svc -n mongodb-namespace
kubectl get all -n mongodb-namespace
kubectl get ing -n mongodb-namespace
