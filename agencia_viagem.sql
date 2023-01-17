-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE hoteis (
cod_hoteis int PRIMARY KEY,
categoria varchar(30),
nome varchar(30),
pais varchar(30),
estado varchar(30),
cidade varchar(30),
rua varchar(30),
bairro varchar(30)
)

CREATE TABLE tipo_quarto (
valor_diaria float,
numero_quarto int,
cod_tipo Int PRIMARY KEY,
cod_hoteis int,
FOREIGN KEY(cod_hoteis) REFERENCES hoteis (cod_hoteis)
)

CREATE TABLE ponto_turistico (
cod_turistico Int PRIMARY KEY,
id_viagem varchar(30)
)

CREATE TABLE viagem (
data date,
hora int,
id_viagem varchar(30) PRIMARY KEY,
local_voo varchar(30),
id_passageiro int,
id_itinerario  varchar(30)
)

CREATE TABLE itinerario (
destino varchar(30),
id_itinerario  varchar(30) PRIMARY KEY
)

CREATE TABLE tel (
tel char(11)
)

CREATE TABLE passageiro (
id_passageiro int PRIMARY KEY,
nacimento date,
cpf cpf(11),
nome varchar(30),
cep char(8),
rua varchar(30),
bairro varchar(30),
cidade varchar(30),
passaporte varchar(30),
cod_hoteis int,
cod_agencia int,
FOREIGN KEY(cod_hoteis) REFERENCES hoteis (cod_hoteis)
)

CREATE TABLE agencia_viagem (
cod_agencia int PRIMARY KEY,
nome_agencia varchar(30)
)

ALTER TABLE ponto_turistico ADD FOREIGN KEY(id_viagem) REFERENCES viagem (id_viagem)
ALTER TABLE viagem ADD FOREIGN KEY(id_passageiro) REFERENCES passageiro (id_passageiro)
ALTER TABLE viagem ADD FOREIGN KEY(id_itinerario ) REFERENCES itinerario (id_itinerario)
ALTER TABLE passageiro ADD FOREIGN KEY(cod_agencia) REFERENCES agencia_viagem (cod_agencia)