CREATE DATABASE escolaEstadual;
USE escolaEstadual;
CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(250),
nota DECIMAL,
bimestre INT,
materia VARCHAR(250),
escolaAluno VARCHAR(250),
PRIMARY KEY(id)
);

INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Leonardo", 10.0,04, "Matematica", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Lucas", 7.0,04, "Geografia", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Bruno", 9.0,04, "Geografia", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Lauro", 4.0,04, "Matematica", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Alexia", 3.0,04, "Matematica", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Robson", 10.0,04, "Matematica", "Maria therezinha");
INSERT INTO alunos(nome,nota,bimestre,materia,escolaAluno)
VALUE("Bruce", 10.0,04, "Portugues", "Maria therezinha");




SELECT * FROM alunos WHERE nota > 7.0;
SELECT * FROM alunos WHERE nota < 7.0;
