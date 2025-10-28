# 🌐 Página Azul - Aplicação Web com Nome do Host

Uma aplicação web simples que exibe uma página azul com o nome do host onde está sendo executada, utilizando NGINX como servidor web.

## 📁 Estrutura do Projeto

- `index.html` 📄: Arquivo HTML que contém a página web com estilo CSS embutido. A página tem um fundo azul e exibe uma mensagem de boas-vindas junto com o nome do host onde está sendo executada.

- `Dockerfile` 🐳: Arquivo de configuração do Docker que:
  - Usa a imagem base `nginx:alpine`
  - Copia os arquivos necessários para o container
  - Define as permissões do script de entrada
  - Configura o ENTRYPOINT e CMD para execução do NGINX

- `entrypoint.sh` ⚙️: Script de inicialização que:
  - Substitui o placeholder "HOSTNAME" no arquivo HTML pelo nome real do host
  - Executa o comando recebido (neste caso, o NGINX)

## 🏗️ Como Construir a Imagem

### Usando Docker

```bash
docker build -t pagina-azul .
```

### Usando Podman

```bash
podman build -t pagina-azul .
```

## 🚀 Como Executar o Container

### Usando Docker

```bash
docker run -d -p 8080:80 --name minha-pagina-azul pagina-azul
```

### Usando Podman

```bash
podman run -d -p 8080:80 --name minha-pagina-azul pagina-azul
```

Após executar o container, acesse a aplicação em seu navegador através do endereço:
http://localhost:8080 🌍

## 🔍 Observações

- A página será exibida em fundo azul
- O nome do host será exibido automaticamente
- A porta 8080 do host está mapeada para a porta 80 do container
- O container executa em modo daemon (-d)