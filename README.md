# README

## Como rodar a aplicação

1. Instale o Docker e o Docker Compose.
2. Rode `docker-compose build` para construir os containers.
3. Rode `docker-compose up` para iniciar a aplicação.
4. Rode `docker-compose run web rake db:create` para criar o banco de dados
5. Rode `docker-compose run web rake db:migrate` para fazer as migrações da tabela do banco de dados
6. Rode `docker-compose run web rake db:seed` para criar os dados fake para o banco de dados
7. Acesse `http://localhost:3000` no seu navegador.

## Como rodar a suíte de testes

1. Rode `docker-compose run web rspec` para rodar os testes.
