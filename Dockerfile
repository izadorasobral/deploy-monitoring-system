# Use a imagem base do Node.js
FROM node:14

# Defina o diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie todo o restante da aplicação para o diretório de trabalho
COPY . .

# Exponha a porta que a aplicação irá usar
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["node", "app.js"]
