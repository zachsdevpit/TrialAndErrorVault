#!/bin/bash

# Get the list of namespaces
namespaces=$(kubectl get namespaces --output=jsonpath='{.items[*].metadata.name}')

# Iterate through each namespace and delete ReplicaSets
for ns in $namespaces; do
	echo "Deleting ReplicaSets in namespace $ns"
	replicaset_names=$(kubectl get replicaset --namespace=$ns --output=jsonpath='{.items[*].metadata.name}')

	# Check if there are ReplicaSets in the namespace
	if [ -n "$replicaset_names" ]; then
		for rs in $replicaset_names; do
			kubectl delete replicaset --namespace=$ns $rs
		done
	else
		echo "No ReplicaSets found in namespace $ns"
	fi
done
