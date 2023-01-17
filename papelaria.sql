-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE produto (
id_produto int PRIMARY KEY,
material_pintura varchar(30),
material_escolar varchar(30),
material_escritorio varchar(30),
produto_informatica varchar(30),
id_papelaria int,
cpf char(11),
id_funcionario int
)

CREATE TABLE papelaria (
id_papelaria int PRIMARY KEY,
nome varchar(25),
estado varchar(30),
bairro varchar(25),
cep char(8),
cidade varchar(25),
rua varchar(25)
)

CREATE TABLE pagamento (
id_pag int PRIMARY KEY,
debito char(3),
credito char(3),
especie char(3),
pix char(3)
)

CREATE TABLE funcionarios (
id_funcionario int PRIMARY KEY,
id_papelaria int,
nome varchar(30),
cidade varchar(30),
estado varchar(30),
bairro varchar(30),
cep char(8),
rua varchar(30),
FOREIGN KEY(id_papelaria) REFERENCES papelaria (id_papelaria)
)

CREATE TABLE cliente (
cpf char(11) PRIMARY KEY,
sexo char(1),
nome varchar(30),
cidade varchar(30),
estado varchar(30),
bairro varchar(30),
cep char(8),
rua Texto(1),
id_papelaria int,
id_funcionario int,
id_pag int,
FOREIGN KEY(id_papelaria) REFERENCES papelaria (id_papelaria),
FOREIGN KEY(id_funcionario) REFERENCES funcionarios (id_funcionario),
FOREIGN KEY(id_pag) REFERENCES pagamento (id_pag)
)

CREATE TABLE tel (
tel char(11)
)

ALTER TABLE produto ADD FOREIGN KEY(id_papelaria) REFERENCES papelaria (id_papelaria)
ALTER TABLE produto ADD FOREIGN KEY(cpf) REFERENCES cliente (cpf)
ALTER TABLE produto ADD FOREIGN KEY(id_funcionario) REFERENCES funcionarios (id_funcionario)