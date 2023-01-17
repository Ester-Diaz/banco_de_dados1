-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

--sql de um hospital---

CREATE TABLE enfermeira  (
coren int PRIMARY KEY,
cpf int,
nome varchar(20),
rua varchar(20),
bairro varchar(20),
cidade varchar(20),
cep int,
cnpj char(11),
crm varchar(11)
)

CREATE TABLE especialidade (
cod_especialidade int PRIMARY KEY,
crm varchar(11),
especialidade varchar(50)
)

CREATE TABLE paciente (
cpf char(11) PRIMARY KEY,
rg varchar(20),
rua varchar(20),
bairro varchar(20),
cidade varchar(20),
cep char(8),
nome varchar(50)
)

CREATE TABLE tratamento (
cpf char(11) PRIMARY KEY,
data date(),
cid char(50),
crm char(10)
)

CREATE TABLE hospital (
cnpj char(11) PRIMARY KEY,
nome varchar(20),
rua varchar(20),
bairro varchar(20),
cep int,
cidade varchar(20),
tel int
)

CREATE TABLE medico (
crm varchar(11) PRIMARY KEY,
nome varchar(20),
rua varchar(20),
bairro varchar(20),
cep int,
cidade varchar(20),
cnpj char(11),
cpf char(11),
FOREIGN KEY(cnpj) REFERENCES hospital (cnpj),
FOREIGN KEY(cpf) REFERENCES paciente (cpf)
)

ALTER TABLE enfermeira  ADD FOREIGN KEY(cnpj) REFERENCES hospital (cnpj)
ALTER TABLE enfermeira  ADD FOREIGN KEY(crm) REFERENCES medico (crm)
ALTER TABLE especialidade ADD FOREIGN KEY(crm) REFERENCES medico (crm)