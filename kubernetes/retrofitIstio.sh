kubectl get namespaces --no-headers=true | awk '{print $1}' | grep -v "kube-system" | xargs -I {} kubectl label namespace {} istio-injection=enabled
