#!/usr/bin/env sh

kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token
