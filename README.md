# Projeto de Implantação do Banco de Dados com MySQL


##Introdução
Este documento fornece informações essenciais para garantir uma implementação bem-sucedida do banco de dados MySQL neste projeto. Siga as instruções abaixo para uma instalação e configuração adequadas.

## Integrantes Grupo 4
1. Anderson Aparecido Lemos
2. Diego de Oliveira Silva
3. Diego Vieira Torres

## Procedimento de Instalação
	1-Download do Instalador
	Acesse MySQL Downloads: https://www.mysql.com/downloads/ e baixe o instalador apropriado para o seu sistema operacional.
	2-Execução do Instalador
	Execute o arquivo de instalação baixado
	3-Configuração do MySQL Server
	Escolha "MySQL Server" durante a instalação.
	Configure uma senha para o usuário "root" do MySQL.
	Escolha as opções de configuração adequadas para o seu ambiente.
	4-Verificação da Instalação
	Abra o prompt de comando e execute mysql -u root -p para verificar a conexão com o MySQL Server.
	
### - Instalar o MySQL Workbench (Opcional)
Se você deseja uma interface gráfica para administrar o MySQL, também pode instalar o MySQL Workbench:
	Baixe o MySQL Workbench em MySQL Workbench Downloads: https://dev.mysql.com/downloads/workbench/.
	Execute o instalador e siga as instruções na tela para concluir a instalação.

### Conectar-se ao servidor usando MySQL Workbench
Para se conectar ao MySQL Server usando o MySQL Workbench:

	Inicie o aplicativo MySQL Workbench em seu computador.
	Na caixa de diálogo Configurar Nova Conexão, insira as seguintes informações na guia Parâmetros:
	Nome da conexão: Projeto Integrador 3
	Nome do servidor: localhost
	Porta: 3306
	Usuário: root
	Senha: [senha do usuário root]	

### Criando Banco de Dados via Script SQL
Execute o script SQL usando o cliente MySQL ou o MySQL Workbench.
O script para criar Base de Dadosestá disponível em **create database projeto_integrador3;**. 

### Estrutura da Tabela:
create table usuario(
  id_usuario smallint auto_increment primary key,
  nome Varchar(50) not null,
  senha varchar(50) not null,
  data_cadastro DATETIME,
  status enum('A','D') 
);
Caso seja necessário, execute o script **create table usuario** Utilize o cliente MySQL ou uma ferramenta semelhante para executar o script.

### Inserindo Dados na Tabela
insert into usuario(nome, senha, data_cadastro, status) values('Anderson', '123456', now(), 'A');

### Linguagem de Definição de Dados (DDL)
A linguagem de definição de dados (DDL) é usada para criar, modificar e excluir objetos de banco de dados, como tabelas, índices, visões e procedimentos armazenados.
	Create: cria um novo objeto de banco de dados.
	Alter: modifica um objeto de banco de dados existente.
	Drop: exclui um objeto de banco de dados existente.
#### Linguagem de Manipulação de Dados (DML)
A linguagem de manipulação de dados (DML) é usada para inserir, excluir, atualizar e recuperar dados de tabelas.

Os comandos DML utilizados neste projeto são:
	Insert: insere novos dados em uma tabela.
	Update: atualiza dados existentes em uma tabela.
	Delete: exclui dados de uma tabela.

#### Linguagem de Consulta de Dados (DQL)
Data Query Language (DQL) - A Data Query Language é a sub-língua responsável pela leitura, ou consulta, de dados de um banco de dados. Em SQL, isto corresponde à SELECT
	.SELECT: retorna um conjunto de resultados de registros de uma ou mais tabelas

## Conclusão
Esperamos que estas instruções facilitem a implementação do banco de dados MySQL em seu projeto. Em caso de problemas ou dúvidas, entre em contato com os integrantes do Grupo 4 listados acima. Boa sorte!

