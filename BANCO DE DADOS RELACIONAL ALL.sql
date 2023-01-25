-- ATIVIDADE 01


CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
importancia VARCHAR (250),
classe_do_personagem VARCHAR (250)
);
INSERT INTO tb_classes (importancia,classe_do_personagem)
VALUES ("Protagonista","Deus");
INSERT INTO tb_classes(importancia,classe_do_personagem)
VALUES("Antagonista","Deus");
INSERT INTO tb_classes(importancia,classe_do_personagem)
VALUES("Secundario","Semi Deus");
INSERT INTO tb_classes (importancia,classe_do_personagem)
VALUES ("Protagonista","Semi Deus");
INSERT INTO tb_classes(importancia,classe_do_personagem)
VALUES("Antagonista","Semi Deus");
INSERT INTO tb_classes(importancia,classe_do_personagem)
VALUES("Secundario","Anão");


CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (250),
jogo VARCHAR (250),
poder_de_ataque DECIMAL,
poder_de_defesa DECIMAL
);
ALTER TABLE tb_personagens ADD classe_id BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT 
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Kratos","God of War",10000.00,8000.00,1);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Loki","God of War",3000.00,1000.00,3);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Thor","God of War",90000.00,8000.00,5);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Odin","God of War",95000.00,8000.00,2);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Zeus","God of War",500000.00,5000.00,2);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Mimir","God of War",500000.00,8000.00,3);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Zagreu","Ades",500000.00,5000.00,4);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Ades","Ades",800000.00,5000.00,2);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Brok","God of War",1200.00,1400.00,6);
INSERT INTO tb_personagens (nome,jogo,poder_de_ataque,poder_de_defesa,classe_id)
VALUES ("Cronos","Ades",90000.00,80000.00,6);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000.00;
SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000.00 AND 2000.00;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id =  tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id =  tb_personagens.classe_id
WHERE tb_classes.classe_do_personagem = "Semi Deus"






-- ATIVIDADE 02


CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
pizza_doce VARCHAR (250),
pizza_salgada VARCHAR (250)
);
INSERT INTO tb_categorias (pizza_salgada,pizza_doce)
VALUES ("Mussarela", "Prestigio");
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
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela e salpicada de orégano.",50.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CHOCOLATE PRETO E CÔCO RALADO.",50.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, milho, lascas de palmito, coberta com catupiry e salpicada de orégano.",70.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, BANANAS, AÇÚCAR DE CONFEITEIRO E CANELA.",70.00,1);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, gorgonzola e salpicada de orégano..",70.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO E FIOS DE BISNAGA.",74.00,1);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, provolone e salpicada de orégano.",75.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, BANANAS, AÇÚCAR DE CONFEITEIRO E FIOS DE BISNAGA.",70.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, lombo defumado, coberta com catupiry e salpicada de orégano.",80.00,2);
INSERT INTO tb_pizzas  (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO CHOCOLATE PRETO E FIOS DE BISNAGA.",40.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela, catupiry, provolone, gorgonzola e salpicada de orégano.",80.00,2);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM CREME DE LEITE, CHOCOLATE BRANCO, COCO RALADO E FIOS DE BISNAGA..",70.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Pizza Salgada com Molho de tomates frescos, mussarela, coberta com calabresa curada moída salpicada de orégano..",40.00,2);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PIZZA DOCE COM COMCREME DE LEITE, CHOCOLATE PRETO OU BRANCO. FIOS DE BISNAGA E GRANULADO..",20.00,1);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("Molho de tomates frescos, mussarela, rodelas de tomates frescos, filés de anchovas e orégano...",60.00,2);
INSERT INTO tb_pizzas (descricao,preco,categorias_id)
VALUES ("PiZZA DOCE COM CREME DE LEITE, FRUTAS EM CALDA E BANANA ...",60.00,1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_categorias WHERE pizza_salgada  LIKE "m%";
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id WHERE categorias_id = 1;






