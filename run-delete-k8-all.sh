#!/bin/bash
kubectl delete -f mysql-pv.yaml
kubectl delete -f mysql-pvc.yaml
kubectl delete -f mongo-service.yaml
kubectl delete -f mongo-deployment.yaml
kubectl delete -f rnd-mysql-secret.yaml
