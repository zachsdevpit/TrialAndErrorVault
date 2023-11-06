# The Problem
Manually applied too many different yaml configs without ever clearing out the old replicasets

## The Solution
No time to select each individually and don't mind not having a backup in the cluster? 
```
kubectl delete replicaset $(kubectl get replicaset -o jsonpath='{.items[?(@.spec.replicas==0)].metadata.name}')
```
