-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cardapio (
id_card int PRIMARY KEY,
descrição varchar(30),
cnpj char(11)
)

CREATE TABLE produtos (
id_prod int PRIMARY KEY,
nome varchar(30),
valor float,
id_card int,
FOREIGN KEY(id_card) REFERENCES cardapio (id_card)
)

CREATE TABLE pagamento (
id_pag int PRIMARY KEY,
dinheiro_especie check,
credito check,
debito check
)

CREATE TABLE endereco (
id_end int PRIMARY KEY,
rua varchar(30),
bairro varchar(30),
cep char(8),
cidade varchar(30),
estado varchar(30)
)

CREATE TABLE restaurante  (
cnpj char(11) PRIMARY KEY,
nome varchar(30),
id_end int,
FOREIGN KEY(id_end) REFERENCES endereco (id_end)
)

CREATE TABLE cliente (
cpf char(11) PRIMARY KEY,
nome varchar(30),
sexo check,
id_end int,
id_card int,
id_pag int,
FOREIGN KEY(id_end) REFERENCES endereco (id_end),
FOREIGN KEY(id_card) REFERENCES cardapio (id_card),
FOREIGN KEY(id_pag) REFERENCES pagamento (id_pag)
)

ALTER TABLE cardapio ADD FOREIGN KEY(cnpj) REFERENCES restaurante  (cnpj)