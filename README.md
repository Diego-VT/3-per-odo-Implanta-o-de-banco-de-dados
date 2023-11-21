# Projeto de Implantação do Banco de Dados com MySQL

Este documento fornece informações essenciais para a implementação do banco de dados MySQL neste projeto. Siga as instruções abaixo para garantir uma instalação e configuração adequadas.

## Integrantes Grupo 4
1. Anderson Aparecido Lemos
2. Diego de Oliveira Silva
3. Diego Vieira Torres

## Pré-requisitos
Antes de iniciar a implantação do banco de dados MySQL, certifique-se de ter as seguintes ferramentas e recursos instalados abaixo.

### - Servidor MySQL
Instale o servidor MySQL em seu ambiente. Você pode baixar a versão mais recente em MySQL Downloads.
[download MySQL Downloads](https://www.mysql.com/downloads/)


### - Cliente MySQL
Tenha um cliente MySQL instalado para facilitar a administração do banco de dados. Recomendamos o uso do MySQL Workbench, disponível em MySQL Workbench Downloads.[download MySQL Workbench](https://dev.mysql.com/downloads/workbench/)

## Configuração do Ambiente
Certifique-se de ter as permissões para criar bancos de dados e tabelas.

## Procedimento de Instalação

### Criação do Banco de Dados
Execute o script de criação do banco de dados. O arquivo SQL correspondente pode ser encontrado em **sql/create_database.sql**. Utilize o cliente MySQL ou uma ferramenta semelhante para executar o script.

### Estrutura da Tabela
O script para criar a estrutura da tabela está disponível em **sql/create_table.sql**. Execute este script para definir a estrutura das tabelas permitidas.

### Dados Iniciais (Opcional):
Caso seja necessário, execute o script **sql/insert_data.sql** para inserir dados iniciais no banco de dados. 

### Configuração Adicional (Opcional)
#### Configurações de conexão:
Verifique e, se necessário, ajuste as configurações de conexão no arquivo **config/database_config.yaml**. Isso inclui informações como nome do banco de dados, usuário, senha, etc.

### Testes e Verificação
Após a conclusão dos passos de instalação e configuração, é preciso realizar os seguintes testes.

#### Conexão com o Banco de Dados:
Use o cliente MySQL ou outra ferramenta para conectar-se ao banco de dados especificado nas configurações e verifique se a conexão está bem concluída.

#### Consulta de Dados:
Execute algumas consultas de teste para garantir que os dados estejam sendo inseridos e recuperados corretamente.

## Projeto Lógico
### Scripts SQL 
-- create database projeto_integrador3; --> comando para criar banco de dados.

-- show databases; -> Comando para mostrar os banco de dados no servidor.

-- use projeto_integrador3; -> Comando "use + nome do banco de dados" para especificado banco de dados que vai ser utilizado.

-- select databases -> qual banco de dados está sendo utilizado.
