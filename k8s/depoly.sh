kubectl create namespace envoy-dns

kubectl create configmap envoy-config --dry-run=client --from-file=envoy.yaml=envoy_config.yaml -o yaml |
        kubectl apply --namespace=envoy-dns -f -

kubectl create configmap envoy-ring-hash-config --dry-run=client --from-file=envoy.yaml=envoy_ring_hash_config.yaml -o yaml |
        kubectl apply --namespace=envoy-dns -f -

kubectl create configmap envoy-health-check-config --dry-run=client --from-file=envoy.yaml=envoy_health_check_config.yaml -o yaml |
        kubectl apply --namespace=envoy-dns -f -

kubectl apply -f envoy_service.yaml
kubectl apply -f envoy_ring_hash_service.yaml
kubectl apply -f upstream_service.yaml
kubectl apply -f envoy_deployment.yaml
kubectl apply -f envoy_ring_hash_deployment.yaml
kubectl apply -f upstream_deployment.yaml1