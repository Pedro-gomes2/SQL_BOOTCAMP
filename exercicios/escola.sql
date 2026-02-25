create database db_escola;

use db_escola;

CREATE TABLE Notas (
    ID_Nota INT PRIMARY KEY AUTO_INCREMENT,
    ID_Estudante INT,
    Disciplina VARCHAR(50) NOT NULL,
    Valor_Nota DECIMAL(4, 2) NOT NULL,
    Bimestre VARCHAR(20),
    FOREIGN KEY (ID_Estudante) REFERENCES Estudantes(ID_Estudante)
);

INSERT INTO Notas (ID_Estudante, Disciplina, Valor_Nota, Bimestre)
VALUES 
(1, 'Matemática', 8.5, '1º Bimestre'),
(1, 'Português', 9.0, '1º Bimestre'),
(2, 'Matemática', 7.2, '1º Bimestre'),
(3, 'História', 9.5, '1º Bimestre'),
(4, 'Geografia', 6.8, '1º Bimestre'),
(5, 'Matemática', 10.0, '1º Bimestre'),
(6, 'Ciências', 8.0, '1º Bimestre'),
(7, 'Inglês', 9.2, '1º Bimestre');

select * from Notas;

select * from Notas where Valor_Nota> 8;

select * from Notas where Valor_Nota< 8;

update Notas set Valor_Nota = 10  where   ID_Nota = 1 and Valor_Nota <8.5;

