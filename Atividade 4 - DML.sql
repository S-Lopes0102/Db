CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE Alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
idade INT,
cidade VARCHAR(50)
);

CREATE TABLE Cursos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(50),
carga_horaria INT
);

CREATE TABLE Matriculas(
id INT AUTO_INCREMENT PRIMARY KEY,
aluno_id INT,
curso_id INT,
data_matricula DATE,
FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

INSERT INTO Alunos (nome, idade, cidade)
VALUES
('Wesley Gabriel', '25', 'Bananeira'),
('Humberto Justino', '15', 'Casserengue'),
('Evandra Costa', '26', 'Solanea'),
('Luis Gadelha', '35', 'Baia Traição'),
('André Maicon', '45', 'Arara');

INSERT INTO cursos(nome_curso, carga_horaria)
VALUES
('Medicina', '1000'),
('Engenharia', '1500'),
('Arquitetura', '2000'),
('Pedagogia', '5000');

INSERT INTO Matriculas (aluno_id, curso_id, data_matricula)
VALUES
(1, 1, '2015-02-01'),
(2, 2, '2016-02-15'),
(3, 4, '2017-06-25'),
(4, 1, '2018-05-26');

select nome, cidade from alunos;
select nome, idade
from alunos
where idade > 20;

select nome, cidade
from alunos
where cidade = 'Bananeira';

select nome_curso, carga_horaria
from cursos
where carga_horaria < 2000;

select alunos.nome as nome_aluno, curso.nome_curso as curso
from Alunos, Cursos, Matriculas
where Alunos.id = Matriculas.aluno_id
and Cursos.id = Matriculas.curso_id;

select nome, idade, cidade
from alunos
where idade > 20 and cidade = 'Baia Traição';

select nome_curso
from Cursos
where carga_horaria = 1000 or carga_horaria = 2000;
