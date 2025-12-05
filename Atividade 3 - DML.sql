CREATE DATABASE escola;

USE escola;

create table alunos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(50),
    serie VARCHAR(10),
    cep INT
    );

INSERT INTO alunos (nome, idade, serie)
VALUES
('Luis Augusto', 16, '1ª Serie')
('Kaio Daniel', 16, '1ª Serie')
('Eloá Medeiros', 14, '8º Ano')
('Mateus Gabriel', 13, '8º Ano')
('João Lucas', 18, '3ª Serie')
/*Exibir alunos cadastrados*/
SELECT * FROM alunos

/*Exibir nomes e idades*/
SELECT nome,idade FROM alunos

/*Exibir alunos do 8º ano*/
SELECT * FROM alunos
WHERE serie = '8º Ano'
