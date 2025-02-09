#!/bin/bash
# Script para build da imagem Docker

# Nome da imagem
IMAGE_NAME="app"

# Caminho do Dockerfile
DOCKERFILE_PATH="Dockerfile"

# Build da imagem Docker
docker build -t $IMAGE_NAME -f $DOCKERFILE_PATH .
