CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(250),
preco DECIMAL NOT NULL,
categoria VARCHAR(200),
validade VARCHAR(30),
marca VARCHAR(250),
PRIMARY KEY(id)
);

INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Cadeira gamer",1200.00,"Imovel","Não tem","Prize");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Pc gamer",1200.00,"Aparelho","Não tem","Coincordia");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Celular",1200.00,"Aparelho","Não tem","Motorola");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Celular",10200.00,"Aparelho","Não tem","Apple");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Monitor",1200.00,"Aparelho","Não tem","Sansung");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Macbook",1200.00,"Aparelho","Não tem","Apple");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Alexia",1200.00,"IA","Não tem","Amazon");
INSERT INTO produto(nome,preco,categoria,validade,marca)
VALUE("Celular",400.00,"Aparelho","Não tem","Sansung");

SELECT * FROM produto WHERE preco > 500;
SELECT * FROM produto WHERE preco < 500;
