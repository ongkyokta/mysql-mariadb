#!/bin/sh
echo 'kubectl delete secret rnd-mysql-secret'
kubectl delete secret rnd-mysql-secret
echo 'kubectl create secret generic rnd-mysql-secret --from-literal=ROOT_PASSWORD=$1 --from-literal=MYSQL_USER=$2 --from-literal=MYSQL_PASSWORD=$3'
kubectl create secret generic rnd-mysql-secret --from-literal=ROOT_PASSWORD=$1 --from-literal=MYSQL_USER=$2 --from-literal=MYSQL_PASSWORD=$3 
