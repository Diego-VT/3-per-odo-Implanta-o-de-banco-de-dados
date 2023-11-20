 -- create database projeto_integrador3; --> comando para criar banco de dados
 -- show databases; -> Comando para mostrar os banco de dados no servidor.
 -- use projeto_integrador3; -> Comando "use + nome do banco de dados" para especificado banco de dados que vai ser utilizado
 -- select databases -> qual banco de dados está sendo utilizado.
 
 -- Criação tabela Usuario--
 create table usuario(
 id_usuario smallint auto_increment primary key,
 nome Varchar(50) not null,
 senha varchar(50) not null,
 data_cadastro DATETIME,
 status enum('A','D') 
 );
  -- Criação tabela UF --
 create table uf(
 id_uf int auto_increment primary key,
 uf char(2),
 nome_uf varchar(50)
 );  
   -- Criação tabela cidade --
create table cidade(
id_cidade int auto_increment primary key,
nome_cidade varchar(70),
cod_mun char(7),
cod_uf int (4),
foreign key (cod_uf) references uf(id_uf)
);  
 -- tabela CEP --
create table cep(
id_cep int auto_increment primary key,
cep int (8) not null,
logadouro varchar (50) not null,
bairro varchar(50) not null
);
 -- Criação tabela cliente-- 
create table cliente(
id_cliente int auto_increment primary key,
nome varchar(50) not null,
email varchar(50) not null,
data_nasc date,
data_cadastro datetime,
ult_acesso datetime,
situacao enum('A','D')
);
-- tabela cliente endereço_endereco --
create table cliente_endereco(
id_endereco int auto_increment primary key,
cod_cliente int not null,
cod_cep int (10) not null,
cod_cidade int (10) not null,
complemento varchar(50) not null,
foreign key (cod_cliente) references cliente(id_cliente),
foreign key (cod_cep) references cep(id_cep),
foreign key (cod_cidade) references cidade(id_cidade)
);
-- tabela telefone --
 create table telefone(
 id_telefone int auto_increment primary key,
 cod_cliente int not null,
 fone varchar (11) not null,
 foreign key (cod_cliente) references cliente(id_cliente)
 ); 
 -- tabela fabricantes --
create table fabricantes(
id_fabricante int  auto_increment primary key,
nome_fabricante varchar(50) not null,
cnpj varchar(50) not null
);
-- tabela categoria --
create table categoria(
id_categoria int auto_increment primary key,
descricao varchar(50) not null
);
-- tabela sensor --
create table sensor(
id_sensor int auto_increment primary key,
descricao varchar(50) not null,
sku varchar(15) not null,
referencia varchar(50) not null,
preco_custo decimal(5,2) not null,
preco_venda decimal(5,2) not null,
cod_categoria int(5) not null,
cod_fabricante int (5) not null,
tensao varchar(50),
função_comutacao varchar(50),
tipo_conexao varchar(50),
grau_protecao varchar(50),
conexao varchar(50),
material_involucro varchar(50),
foreign key (cod_categoria) references categoria(id_categoria),
foreign key (cod_fabricante) references fabricantes(id_fabricante)
);

-- Alterando de 50 para 100 tamanho do campo descricao
ALTER TABLE sensor MODIFY descricao varchar(100);

-- tabela tipo de piscina --
create table tipo_piscina(
id_tipo int  auto_increment primary key,
descricao varchar(50) not null
);
-- tabela piscina --
create table piscina(
id_piscina int auto_increment primary key,
cod_cliente int (5) not null,
cod_tipo int (5) not null,
cod_fabricante int (5) not null,
coomprimento varchar(50) not null,
largura float(7,2) not null,
profundidade float(7,2) not null,
volume float(7,2) not null,
foreign key (cod_cliente) references cliente(id_cliente),
foreign key (cod_tipo) references tipo_piscina(id_tipo),
foreign key (cod_fabricante) references fabricantes(id_fabricante)
); 
 -- tabela piscina sensor --
 create table piscina_sensor(
id_piscina_sensor int auto_increment primary key,
cod_piscina int (5) not null,
cod_sensor int (5) not null,
foreign key (cod_piscina) references piscina(id_piscina),
foreign key (cod_sensor) references sensor(id_sensor)  
 );
 
 
 
 

 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 