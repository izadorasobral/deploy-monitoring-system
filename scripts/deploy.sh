#!/bin/bash
set -e
set -o pipefail

echo "Iniciando o script de deploy..."

# Nome da imagem
IMAGE_NAME="app"

# Nome do deployment no Kubernetes
DEPLOYMENT_NAME="app-deployment"

# Certifique-se de que o kubeconfig está configurado corretamente
export KUBECONFIG=$HOME/.kube/config

# Verificar e deletar o deployment existente
if kubectl get deployment $DEPLOYMENT_NAME; then
    echo "Deployment existente encontrado. Excluindo..."
    kubectl delete deployment $DEPLOYMENT_NAME
fi

echo "Criando o deployment no Kubernetes..."
# Crie um deployment no Kubernetes
kubectl create deployment $DEPLOYMENT_NAME --image=$IMAGE_NAME

echo "Expondo o deployment como um serviço..."
# Exponha o deployment como um serviço
kubectl expose deployment $DEPLOYMENT_NAME --type=LoadBalancer --port=8080

echo "Deployment e serviço criados com sucesso."
