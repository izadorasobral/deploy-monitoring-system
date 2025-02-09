# Projeto de Monitoramento de Sistema

Este projeto configura e implementa um sistema de monitoramento utilizando Prometheus, Grafana e Kubernetes. O objetivo é garantir a observabilidade e a escalabilidade da aplicação por meio da coleta, análise e visualização de métricas.

## Visão Geral

O sistema é composto pelos seguintes componentes principais:
- **Prometheus**: Coleta e armazena métricas da aplicação e do servidor.
- **Grafana**: Visualização e análise das métricas coletadas.
- **Kubernetes**: Orquestração e gerenciamento dos contêineres da aplicação.
- **Node Exporter**: Exporta métricas do sistema, como CPU, memória e uso de disco.

## Estrutura do Projeto

```
├── kubernetes/
│   ├── deployment.yaml          # Configuração do deployment no Kubernetes
│   ├── service-loadbalancer.yaml # Configuração do serviço com LoadBalancer
│   ├── service.yaml             # Configuração do serviço no Kubernetes
├── scripts/
│   ├── build.sh                 # Script para construção do contêiner Docker
│   ├── deploy.sh                # Script para deploy no Kubernetes
├── app/
│   ├── app.js                   # Código da aplicação
│   ├── package.json             # Dependências do projeto Node.js
│   ├── package-lock.json        # Lockfile do Node.js
├── monitoring/
│   ├── prometheus.yml           # Configuração do Prometheus
│   ├── grafana-dashboard.json   # Configuração do dashboard no Grafana
├── Dockerfile                   # Definição do contêiner Docker
├── Makefile                      # Comandos para facilitar o uso do projeto
├── README.md                     # Documentação do projeto
```

## Configuração e Implementação

### 1. Configuração Inicial

1. Clone este repositório:
   ```sh
   git clone https://github.com/izadorasobral/deploy-monitoring-system.git
   cd deploy-monitoring-system
   ```
2. Configure o ambiente instalando as dependências necessárias:
   ```sh
   sudo apt update && sudo apt install -y docker.io kubectl
   ```
3. Inicialize um cluster Kubernetes (se necessário):
   ```sh
   minikube start
   ```

### 2. Deploy da Aplicação

1. Construa a imagem Docker:
   ```sh
   make build
   ```
2. Faça o deploy no Kubernetes:
   ```sh
   make deploy
   ```
3. Verifique os pods em execução:
   ```sh
   kubectl get pods
   ```

### 3. Configuração do Monitoramento

#### Prometheus
- Configurado para coletar métricas da aplicação e do sistema.
- Arquivo de configuração: `monitoring/prometheus.yml`.
- Para acessar o Prometheus, execute:
  ```sh
  kubectl port-forward svc/prometheus-service 9090:9090
  ```

#### Grafana
- Configurado para visualizar as métricas coletadas pelo Prometheus.
- Dashboard customizado incluído no repositório (`monitoring/grafana-dashboard.json`).
- Para acessar o Grafana:
  ```sh
  kubectl port-forward svc/grafana-service 3000:3000
  ```
- Usuário padrão: `admin`, senha: `admin` (alterável no setup).

### 4. Monitoramento Contínuo e Alertas
- **Configuração de alertas** no Grafana para picos de CPU e uso excessivo de memória.
- **Dashboards customizados** para acompanhar desempenho em tempo real.
- **Escalabilidade horizontal** utilizando Kubernetes para balanceamento de carga.

## Próximos Passos
<<<<<<< HEAD
- Melhorar os dashboards do Grafana.
- Adicionar logs estruturados usando Loki.
- Criar um pipeline CI/CD com GitHub Actions para deploy automatizado.
=======
- Verificar se o Prometheus está configurado corretamente no arquivo monitoring/prometheus.yml

- Acessar o Prometheus via port-forwarding (kubectl port-forward svc/prometheus-service 9090:9090)

- Verificar se o Grafana está configurado corretamente e se o dashboard customizado foi incluído (monitoring/grafana-dashboard.json)

- Acessar o Grafana via port-forwarding (kubectl port-forward svc/grafana-service 3000:3000)

- Configurar alertas no Grafana para picos de CPU e uso excessivo de memória

- Criar dashboards customizados para acompanhar desempenho em tempo real

-  Configurar a escalabilidade horizontal utilizando Kubernetes para balanceamento de carga

- Melhorar os dashboards do Grafana

- Adicionar logs estruturados usando Loki

- Criar um pipeline CI/CD com GitHub Actions para deploy automatizado
>>>>>>> a79f6dfd603497a238a8891f30e8c54f6f0dd05e

## Contribuição
Se quiser contribuir, sinta-se à vontade para abrir uma issue ou enviar um pull request!

---

