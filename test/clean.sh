#!/bin/bash

echo "CLEAN ALL"
kubectl delete deployment --all
kubectl delete service --all
kubectl delete pod --all
kubectl delete daemonsets.apps cadvisor
kubectl delete ingress --all
kubectl delete  persistentvolumeclaims postgres-pv-claim
kubectl delete  persistentvolume postgres-volume