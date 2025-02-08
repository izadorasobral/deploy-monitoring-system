# Projeto de Monitoramento de Sistema

Este projeto configura e implementa um sistema de monitoramento utilizando Prometheus, Grafana e Kubernetes.

## Visão Geral

Este projeto tem como objetivo configurar um sistema de monitoramento robusto para aplicações e servidores. Utilizamos Prometheus para coletar métricas, Grafana para visualização e Kubernetes para orquestração e gerenciamento de contêineres.

## Estrutura do Projeto

- **Dockerfile**: Arquivo de definição do contêiner Docker para a aplicação.
- **README.md**: Este arquivo, contendo a documentação do projeto.
- **app.js**: Código da aplicação.
- **build.sh**: Script para construção do contêiner Docker.
- **deploy.sh**: Script para deploy da aplicação no Kubernetes.
- **deployment.yaml**: Arquivo de configuração do deployment no Kubernetes.
- **service-loadbalancer.yaml**: Arquivo de configuração do serviço com load balancer no Kubernetes.
- **service.yaml**: Arquivo de configuração do serviço no Kubernetes.
- **observacoes.md**: Notas e observações diversas.
- **package.json e package-lock.json**: Arquivos de configuração do projeto Node.js.
- **requirements.txt**: Arquivo de dependências do projeto.

## Configuração e Implementação

### 1. Configuração Inicial

- **Inicialização do Repositório Git**:
  - Inicializamos um repositório Git para o projeto e configuramos o repositório remoto.

### 2. Implementação do Monitoramento

- **Prometheus**:
  - Configuramos o Prometheus para coletar métricas da aplicação e do servidor.
  - Adicionamos configurações no arquivo `prometheus.yml` para coletar métricas relevantes.

- **Node Exporter**:
  - Configuramos o Node Exporter para expor métricas do sistema (CPU, memória, etc.).
  
- **Grafana**:
  - Configuramos o Grafana para visualizar as métricas coletadas pelo Prometheus.
  - Criamos dashboards personalizados para monitorar o desempenho do sistema.

### 3. Implementação de Ações Corretivas

- **Otimização de Código**:
  - Revisamos e refatoramos partes do código da aplicação para melhorar a eficiência e desempenho.

- **Ajustes no Servidor**:
  - Configuramos um balanceador de carga (ex.: Nginx, HAProxy) para distribuir o tráfego entre múltiplos servidores.
  - Aplicamos técnicas de caching para reduzir a carga no servidor.

- **Escalabilidade Horizontal**:
  - Configuramos mais instâncias da aplicação usando contêineres (Docker) e Kubernetes.
  - Realizamos testes de carga para verificar a escalabilidade horizontal do sistema.

### 4. Monitoramento Contínuo e Ajustes Futuros

- **Monitoramento Contínuo**:
  - Mantemos um monitoramento contínuo das métricas relevantes através dos dashboards no Grafana.
  - Ajustamos consultas e gráficos conforme necessário para obter insights mais precisos.

- **Configuração de Alertas**:
  - Configuramos alertas no Grafana para monitorar picos de CPU e outras métricas críticas.

### 5. Documentação

- **Documentação Detalhada**:
  - Criamos documentação detalhada para cada etapa do projeto, incluindo capturas de tela dos gráficos e descrições das ações corretivas.

## Próximos Passos

1. Continuar monitorando o sistema e ajustar configurações conforme necessário.
2. Compartilhar conhecimentos adquiridos através de apresentações ou artigos de blog.

## Conclusão

Este projeto de monitoramento de sistema proporciona uma visão abrangente e detalhada do desempenho da aplicação e do servidor, permitindo identificar e corrigir problemas de forma eficaz.

---


