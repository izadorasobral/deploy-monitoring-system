#!/bin/bash
# Script para build da imagem Docker

# Nome da imagem
IMAGE_NAME="meu-app"

# Build da imagem Docker
docker build -t $IMAGE_NAME .
