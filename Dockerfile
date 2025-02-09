<<<<<<< HEAD
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
=======
# Usar a imagem base oficial do Node.js
FROM node:14

# Defina o diretório de trabalho
WORKDIR /usr/src/app

# Copiar o package.json e o package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do código da aplicação
COPY . .

# Expor a porta que a aplicação irá rodar
EXPOSE 8080

# Comando para iniciar a aplicação
>>>>>>> a79f6dfd603497a238a8891f30e8c54f6f0dd05e
CMD ["node", "app.js"]
