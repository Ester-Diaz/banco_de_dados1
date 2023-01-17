
CREATE TABLE Cardápio  (
Cod_cardapio int PRIMARY KEY,
agua varchar(30),
Cervejas varchar(30),
Refrigerantes varchar(30),
Esfihas varchar(30),
Pizzas varchar(30)
)

CREATE TABLE pedido (
escolha do cardápio varchar(30),
Cod_pedido int PRIMARY KEY,
Cod_cardápio int,
FOREIGN KEY(Cod_cardápio) REFERENCES Cardápio  (Cod_cardapio)
)

CREATE TABLE Pizzaria_empresa. (
Cod_pizzaria int PRIMARY KEY,
Cidade varchar(30),
estado varchar(30),
Rua varchar(30),
CEP char(8),
tel char(11),
Cod_entregador int
)

CREATE TABLE Cliente  (
Nome varchar(30),
cadastro int PRIMARY KEY,
Tel char(11),
rua varchar(30),
Cod_pizzaria int,
Cod_cardápio int,
cep char(8),
estado varchar(30),
cidade varchar(30),
FOREIGN KEY(Cod_pizzaria) REFERENCES Pizzaria_empresa. (Cod_pizzaria),
FOREIGN KEY(Cod_cardápio) REFERENCES Cardápio  (Cod_cardapio)
)

CREATE TABLE atendente (
Cod_atendente int PRIMARY KEY,
Nome Texto(1),
rua varchar(30),
cadastro int,
Cod_pizzaria int,
estado varchar(30),
cidade varchar(30),
cep char(8),
FOREIGN KEY(cadastro) REFERENCES Cliente  (cadastro),
FOREIGN KEY(Cod_pizzaria) REFERENCES Pizzaria_empresa. (Cod_pizzaria)
)

CREATE TABLE Entregador (
Cod_entregador int PRIMARY KEY,
nome varchar(30),
cpf char(8)
)

CREATE TABLE Entrega_pedido (
Cod_entrega int PRIMARY KEY,
pedido varchar(30),
Cod_entregador int,
FOREIGN KEY(Cod_entregador) REFERENCES Entregador (Cod_entregador)
)

CREATE TABLE Pagamento  (
Cod_pagamento int PRIMARY KEY,
preço dos pedidos  float,
-- Erro: nome do campo duplicado nesta tabela!
Cod_pagamento int,
cadastro int,
FOREIGN KEY(cadastro) REFERENCES Cliente  (cadastro)
)

CREATE TABLE formas_de_pag (
Dinheiro float,
deposito_bancario  float,
Cod_pagamento int PRIMARY KEY,
Debito  char(3),
credito char(3)
)

ALTER TABLE Pizzaria_empresa. ADD FOREIGN KEY(Cod_entregador) REFERENCES Entregador (Cod_entregador)
ALTER TABLE Pagamento  ADD FOREIGN KEY(Cod_pagamento) REFERENCES formas_de_pag (Cod_pagamento)