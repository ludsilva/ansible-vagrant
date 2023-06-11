# Projeto Ansible

Este projeto tem como objetivos criar uma máquina virtual através do Vagrant, instalar o Ansible a fim de padronizar a instalação de pacotes gerais e do Nginx.

## Configurações do projeto

- `Vagrantfile` - arquivo padrão do Vagrant que possui o shell definido como provisionador para executar um script; configurações de network com redirecionamento de porta para a porta 8090; instruções para provisionar e executar o Ansible; além cpu e memória RAM da VM provisionados;

- `script.sh` - arquivo shell script para executar os comandos de update, upgrade e instalar o Ansible;

- `/ansible` - diretório contendo as roles (common e nginx) para instalação dos pacotes:
  - vim
  - curl
  - telnet
  - unzip
  - wget
  - net-tools
  - htop
  - nmap

Além da instalação do servidor web Nginx para servir a API do Via Cep.

## Como usar este repositório
1. Primeiro, você deve clonar este repositório com o comando: `git clone https://github.com/ludsilva/ansible-vagrant.git`

2. Para rodar este projeto localmente, você precisa ter o Vagrant instalado em sua máquina local. 
  - [Windows](https://www.youtube.com/watch?v=yFSm6TXBuDE&ab_channel=VemcomoPY) | [Linux](https://www.youtube.com/watch?v=fwKPiyWaDbU&pp=ygUQaW5zdGFsYXIgdmFncmFudA%3D%3D) | [Documentação do Vagrant](https://developer.hashicorp.com/vagrant/downloads)

3. Após instalado, siga com os seguintes comandos no terminal / bash dentro do repositório:
```
## Criar a instância
 vagrant up
## Acessar a instância via ssh
  vagrant ssh
```

4. Para acessar a página do Via Cep, digite no seu navegador: `localhost:8080`

## Licença

MIT License