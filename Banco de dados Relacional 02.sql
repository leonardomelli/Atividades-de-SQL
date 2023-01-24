CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
pizza_doce VARCHAR (250),
pizza_salgada VARCHAR (250)
);
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Mussarela","Prestigio");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Milho","Banana");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Gorgonzola","Chocolate preto ou branco");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Provolone","CHOCO-NANA");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Lombo","CHOCOLATE MESCLADO");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Quatro queijos"," BEIJINHO");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Toscana","BRIGADEIRO");
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Romana","CALIFÓRNIA");

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR (10000),
preco DECIMAL
);
ALTER TABLE tb_pizzas ADD categorias_id BIGINT;
ALTER TABLE tb_pizzas ADD CONSTRAINT  
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id);

INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela e salpicada de orégano.",50.00,1);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CHOCOLATE PRETO E CÔCO RALADO.",50.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, milho, lascas de palmito, coberta com catupiry e salpicada de orégano.",70.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, BANANAS, AÇÚCAR DE CONFEITEIRO E CANELA.",70.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, gorgonzola e salpicada de orégano..",70.00,3);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO E FIOS DE BISNAGA.",74.00,3);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, provolone e salpicada de orégano.",75.00,4);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, BANANAS, AÇÚCAR DE CONFEITEIRO E FIOS DE BISNAGA.",70.00,4);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, lombo defumado, coberta com catupiry e salpicada de orégano.",80.00,5);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO CHOCOLATE PRETO E FIOS DE BISNAGA.",40.00,5);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela, catupiry, provolone, gorgonzola e salpicada de orégano.",80.00,6);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO, COCO RALADO E FIOS DE BISNAGA..",70.00,6);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela, coberta com calabresa curada moída salpicada de orégano..",40.00,7);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM COMCREME DE LEITE, CHOCOLATE PRETO OU BRANCO. FIOS DE BISNAGA E GRANULADO..",20.00,7);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Molho de tomates frescos, mussarela, rodelas de tomates frescos, filés de anchovas e orégano...",60.00,8);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PiZZA DOCE COM CREME DE LEITE, FRUTAS EM CALDA E BANANA ...",60.00,8);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_categorias WHERE pizza_salgada  LIKE "m%";
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id
WHERE tb_pizzas.descricao = "DOCE";




