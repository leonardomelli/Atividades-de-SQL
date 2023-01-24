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



