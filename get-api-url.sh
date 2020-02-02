K8S_CONTEXT=$(kubectl config view -o jsonpath="{.current-context}")
K8S_CLUSTER=$(kubectl config view -o jsonpath="{.contexts[?(@.name == '${K8S_CONTEXT}')].context.cluster}")
K8S_API_URL=$(kubectl config view -o jsonpath="{.clusters[?(@.name == '${K8S_CLUSTER}')].cluster.server}")
echo $K8S_API_URL
