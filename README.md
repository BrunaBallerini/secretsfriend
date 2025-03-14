# Amigo Secreto - Ruby on Rails - Backend

Este projeto é uma aplicação web para sorteios entre amigos, utilizando Rails no backend e React no frontend.

## Tecnologias Utilizadas

- [Rails](https://rubyonrails.org/)
- [Docker](https://www.docker.com/)
- Banco de dados: **SQLite**

## Instalação e Configuração

### Pré-requisitos
Antes de começar, você precisa ter instalado:
- [Docker](https://docs.docker.com/get-started/get-docker/)

### Como rodar o projeto?

1. Clone os repositórios do backend e do frontend :
   ```bash
   git clone git@github.com:MatheusCarvalho2/secretsfriend.git
   git clone git@github.com:MatheusCarvalho2/secretsfriendsfrontend.git
   ```

2. Faça o build utilizando o docker e suba a aplicação :
   **Precisa ser feito nos dois projetos separados**
   ```bash
   docker compose build
   docker compose up
   ```

3. Este projeto utiliza um arquivo `.env` para armazenar variáveis de ambiente sensíveis. 
   Para rodar o projeto corretamente, siga os passos abaixo:
   **Crie um arquivo `.env` na raiz do projeto e configure suas próprias variáveis de ambiente**  
   Use o comando:  
   ```sh
   cp env.example.txt .env


3. Acesse no navegador:
   ```
   http://localhost:5173
   ```

## Funcionalidades

- Cadastro e login de usuários
- Sorteio de participantes
- Envio do sorteio por e-mail
