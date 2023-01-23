CREATE DATABASE rh;
USE rh;
create table colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
salario DECIMAL,
matricula INT,
cargo VARCHAR(250),
setor VARCHAR (250),
PRIMARY KEY (id)
);


INSERT INTO colaboradores (nome,salario,matricula,cargo,setor) 
VALUES("Leonardo", 1200.00, 123456, "Recursos humanos","RH");
INSERT INTO colaboradores (nome,salario,matricula,cargo,setor) 
VALUES("Roseno", 1200.00 , 567846, "Recursos humanos","RH");
INSERT INTO colaboradores (nome,salario,matricula,cargo,setor) 
VALUES("Rafaela", 1200.00, 145746, "Recursos humanos","RH");
INSERT INTO colaboradores (nome,salario,matricula,cargo,setor) 
VALUES("Gustavo", 12000.00, 145786, "Recursos humanos","RH");
INSERT INTO colaboradores (nome,salario,matricula,cargo,setor) 
VALUES("Pedro", 2200.00, 958705, "Recursos humanos","RH");

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;


