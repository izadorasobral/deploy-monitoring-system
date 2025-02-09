build:
    docker build -t myapp .

deploy:
    kubectl apply -f kubernetes/deployment.yaml
    kubectl apply -f kubernetes/service-loadbalancer.yaml
    kubectl apply -f kubernetes/service.yaml
