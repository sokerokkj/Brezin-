use brezinndb;

drop database brezinndb;
create database brezinndb;

create table usuario (
 id_user int primary key auto_increment,
 nome_user varchar(200) not null,
 email_user varchar(200) not null,
 senha_user varchar(100) not null,
 ocupaçao_user varchar(100) not null
 );
 
 create table Loja (
	id_loj int primary key auto_increment,
	nome_loj varchar(200) not null,
	descricao_loj varchar(200),
	iduser_loj int not null,
    foreign key (iduser_loj) references usuario(id_user)
 );
 
 create table produto (
	id_produto int primary key auto_increment,
    lojaid_produto int not null,
	nome_produto varchar(200) not null,
	descriçao_produto varchar(200) not null,
    preço_produto decimal(10,2) not null,
	
    foreign key (lojaid_produto) references loja(id_loj)
 );
 
CREATE TABLE carrinho (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT not null,
    quantidade INT NOT NULL,
    soma_valores DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produto(id_produto)
);
CREATE TABLE lista_de_desejos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    quantidade INT NOT NULL,
    nome_lista VARCHAR(50),
    FOREIGN KEY (produto_id) REFERENCES produto(id_produto)
);