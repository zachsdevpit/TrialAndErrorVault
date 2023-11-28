#!/bin/bash

# Get a list of all namespaces
all_namespaces=$(kubectl get namespaces -o=jsonpath='{.items[*].metadata.name}')

# Iterate over each namespace and restart the deployment
for namespace in $all_namespaces; do
	echo "Restarting deployment in namespace: $namespace"
	kubectl rollout restart deployment -n $namespace
done
