# 📦 README

## 📋 Sumário

- [Como rodar a aplicação](#como-rodar-a-aplicação)
- [Como rodar a suíte de testes](#como-rodar-a-suíte-de-testes)

## 🚀 Como rodar a aplicação

Para rodar a aplicação, siga os passos abaixo:

1. Instale o **Docker** e o **Docker Compose**.
2. Execute o comando para construir os containers:
   ```bash
   docker-compose build
   ```
3. Inicie a aplicação com o seguinte comando:
   ```bash
   docker-compose up
   ```
4. Crie o banco de dados:
   ```bash
   docker-compose run web rake db:create
   ```
5. Realize as migrações da tabela do banco de dados:
   ```bash
   docker-compose run web rake db:migrate
   ```
6. Crie dados fake para o banco de dados:
   ```bash
   docker-compose run web rake db:seed
   ```
7. Acesse a aplicação no seu navegador em http://localhost:3000

## 🧪 Como rodar a aplicação

1. Para rodar a suíte de testes, utilize o seguinte comando:
   ```bash
   docker-compose run web rspec
   ```
