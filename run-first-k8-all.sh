#!/bin/bash
./image-build.sh
./image-push.sh
# ./mysql-secret.sh <password_root> <user_mysql> <password_mysql>
./mysql-secret.sh root_password user_mysql password_mysql
kubectl apply -f mysql-pvc.yaml
kubectl apply -f mysql-pv.yaml
kubectl apply -f mongo-deployment.yaml
kubectl apply -f mongo-service.yaml

